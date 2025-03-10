import os
import json
import argparse

FHIR_DIR = "example"  # Or get this from command-line arguments

def create_bundle(resource_type, directory, output_dir):
    """Creates a FHIR Bundle and saves it to a file."""

    bundle = {
        "resourceType": "Bundle",
        "type": "transaction",  # Or "collection" if appropriate
        "entry": []
    }

    for filename in os.listdir(directory):
        if filename.endswith(".json") and filename.startswith(resource_type):
            filepath = os.path.join(directory, filename)
            print(f"Adding {filename} to Bundle")

            try:
                with open(filepath, 'r', encoding='utf-8') as f:
                    resource_json = json.load(f)

                    bundle["entry"].append({
                        "request": {
                            "method": "POST",  # Or "PUT" if you have IDs
                            "url": f"{resource_type}"
                        },
                        "resource": resource_json
                    })

            except json.JSONDecodeError as e:
                print(f"Error decoding JSON in {filename}: {e}")
                return 1
            except FileNotFoundError:
                print(f"File not found: {filepath}")
                return 1
            except Exception as e:
                print(f"An unexpected error occurred: {e}")
                return 1

    if bundle["entry"]:
        try:
            os.makedirs(output_dir, exist_ok=True)  # Create output directory if it doesn't exist
            bundle_filename = os.path.join(output_dir, f"Bundle-{resource_type}.json")  # Create a file name for the bundle
            with open(bundle_filename, 'w', encoding='utf-8') as outfile:
                json.dump(bundle, outfile, indent=4)  # Save the bundle to a file with indentation
            print(f"Bundle saved to {bundle_filename}")
            return 0
        except OSError as e:
            print(f"Error saving Bundle to file: {e}")
            return 1
    else:
        print(f"No {resource_type} resources found to bundle.")
        return 0


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Create FHIR Bundles from JSON files.")
    parser.add_argument("directory", help="The directory containing the JSON files.")
    args = parser.parse_args()

    FHIR_DIR = args.directory  # Get the directory from the command line

    resource_types = ["Patient", "AllergyIntolerance", "Condition", "DiagnosticReport",
                      "DocumentReference", "Immunization", "Observation"]

    for resource_type in resource_types:
        exit_code = create_bundle(resource_type, FHIR_DIR, FHIR_DIR)
        if exit_code != 0:
            exit(exit_code)

    print("Bundle creation process complete.")