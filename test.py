import subprocess
import os
import json
import shlex

FHIR_SERVER = "http://localhost:8080"
OUTPUT_DIR = "testout"
CURL_TIMEOUT = 30

def curl_request(method, resource_type, params="", output_filename=None):
    """Handles curl requests and writes to a specific file."""

    if output_filename is None:
        output_filename = f"{resource_type}.json"

    output_path = os.path.join(OUTPUT_DIR, output_filename)

    try:
        url = f"{FHIR_SERVER}/fhir/{resource_type}"
        if params:
            url += f"?{params}"

        os.makedirs(OUTPUT_DIR, exist_ok=True)

        curl_command = ["curl", "-X", method, url, "-H", "Content-Type: application/fhir+json", "-i"]
        print("Executing curl command:")
        print(" ".join(shlex.quote(arg) for arg in curl_command))

        result = subprocess.run(
            curl_command,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            check=False,
            text=True,
            timeout=CURL_TIMEOUT
        )

        if result.returncode != 0:
            print(f"ERROR: curl command failed with return code {result.returncode}")
            print(result.stderr)
            return 1

        response_lines = result.stdout.splitlines()
        http_code = int(response_lines[0].split()[1])  # Extract HTTP status code from the first line

        if not (200 <= http_code < 300):
            print(f"HTTP Error: {http_code} for {resource_type}")
            print(result.stdout)
            return 1

        with open(output_path, "w", encoding="utf-8") as f:
            f.write(result.stdout)

        print(f"Retrieved {resource_type} and saved to {output_filename} successfully.")
        return 0

    except subprocess.TimeoutExpired:
        print(f"ERROR: Request to {resource_type} timed out after {CURL_TIMEOUT} seconds. Server not responding?")
        return 1
    except FileNotFoundError:
        print("curl not found. Please install curl and ensure it's in your PATH.")
        return 1
    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        return 1

def curl_post(resource_type, filename, output_filename=None):
    """Handles curl POST requests and writes to a specific file."""

    if output_filename is None:
        output_filename = f"{resource_type}_post.json"

    output_path = os.path.join(OUTPUT_DIR, output_filename)

    try:
        os.makedirs(OUTPUT_DIR, exist_ok=True)

        curl_command = ["curl", "-X", "POST", f"{FHIR_SERVER}/fhir", "-H", "Content-Type: application/fhir+json", "-d", f"@{filename}", "-i"]
        print("Executing curl command:")
        print(" ".join(shlex.quote(arg) for arg in curl_command))

        result = subprocess.run(
            curl_command,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            check=False,
            text=True,
            timeout=CURL_TIMEOUT
        )

        if result.returncode != 0:
            print(f"ERROR: curl command failed with return code {result.returncode}")
            print(result.stderr)
            return 1

        response_lines = result.stdout.splitlines()
        http_code = int(response_lines[0].split()[1])  # Extract HTTP status code from the first line

        if not (200 <= http_code < 300):
            print(f"HTTP Error: {http_code} for {resource_type}")
            print(result.stdout)
            return 1

        with open(output_path, "w", encoding="utf-8") as f:
            f.write(result.stdout)

        print(f"Posted {filename} and saved to {output_filename} successfully.")
        return 0

    except subprocess.TimeoutExpired:
        print(f"ERROR: Request to POST {filename} timed out after {CURL_TIMEOUT} seconds. Server not responding?")
        return 1
    except FileNotFoundError:
        print("curl not found. Please install curl and ensure it's in your PATH.")
        return 1
    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        return 1

if __name__ == "__main__":
    print("Starting FHIR resource retrieval...")

    resources = [
        ("GET", "Patient", "_count=200&identifier=666114838", "patient_identifier.json"),
        ("GET", "AllergyIntolerance", "_count=200&patient=Patient/1&clinical-status=active&verification-status:not=entered-in-error", "allergy_intolerance_clinical.json"),
        ("GET", "AllergyIntolerance", "_count=200&patient=Patient/1&_elements=identifier", "allergy_intolerance_identifier.json"),
        ("GET", "Condition", "_count=200&patient=Patient/2&clinical-status=active", "condition_active.json"),
        ("GET", "Condition", "_count=200&patient=Patient/2&_elements=identifier", "condition_identifier.json"),
        ("GET", "DiagnosticReport", "_count=200&patient=Patient/3&status:not=entered-in-error&category=http://loinc.org%7CLP29684-5", "diagnostic_report_status_category.json"),
        ("GET", "DiagnosticReport", "_count=200&patient=Patient/3&_elements=identifier", "diagnostic_report_identifier_category.json"),
        ("GET", "DocumentReference", "_count=200&patient=Patient/4&status:not=entered-in-error&category=http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category%7Cclinical-note", "document_reference_status_category.json"),
        ("GET", "DocumentReference", "_count=200&patient=Patient/4&_elements=identifier", "document_reference_identifier.json"),
        ("GET", "Immunization", "_count=200&patient=Patient/5&status:not=entered-in-error", "immunization_status.json"),
        ("GET", "Immunization", "_count=200&patient=Patient/5&_elements=identifier", "immunization_identifier.json"),
        ("GET", "Observation", "_count=200&patient=Patient/6&category=http://terminology.hl7.org/CodeSystem/observation-category%7Cvital-signs&status:not=entered-in-error", "observation_category_status.json"),
        ("GET", "Observation", "_count=200&patient=Patient/6&_elements=identifier", "observation_identifier.json"),
    # don't do as this requires only one copy of that identifier, and encoding of identifier in the post seems not working yet    ("POST", "Bundle", "Bundle-ex-updateBundle.json", "bundle_update_response.json")
    ]

    for method, resource_type, *args in resources:
        if method == "GET":
            params = args[0] if args else ""
            output_filename = args[1] if len(args) > 1 else None
            if curl_request(method, resource_type, params, output_filename) != 0:
                print("Aborting due to error.")
                exit(1)
        elif method == "POST":
            filename = args[0]
            output_filename = args[1] if len(args) > 1 else None
            if curl_post(resource_type, filename, output_filename) != 0:
                print("Aborting due to error.")
                exit(1)

    print("FHIR resource retrieval and updates complete.")
