import subprocess
import os
import json
import argparse

FHIR_SERVER = "http://localhost:8080"

def upload_fhir_resource(resource_type, directory):
    """Uploads FHIR resources of a specific type."""
    print(f"Processing directory: {directory}")
    for filename in os.listdir(directory):
        if filename.endswith(".json") and filename.startswith(resource_type):
            filepath = os.path.join(directory, filename)
            print(f"Uploading {filename} to {FHIR_SERVER}/fhir/{resource_type}")

            try:
                with open(filepath, 'rb') as f:  # Open in binary mode for curl
                    # Use subprocess.run for better error handling
                    result = subprocess.run(
                        ["curl", "-s", "-X", "POST", f"{FHIR_SERVER}/fhir",
                         "-H", "Content-Type: application/fhir+json", "--data-binary", f"@{filepath}"],  # Use --data-binary for files
                        capture_output=True,  # Capture output for debugging
                        check=True,  # Raise an exception for non-zero exit codes
                    )
                    #If you remove the -s from curl, you can remove the next two lines
                    #print(result.stdout.decode()) # Print the server response
                    #print(result.stderr.decode()) # Print any errors from curl itself
                    print() #add empty line for readability
            except subprocess.CalledProcessError as e:
                print(f"Error uploading {filename}: {e}")
                print(f"stderr: {e.stderr.decode()}") # Print stderr for debugging
                return 1  # Indicate failure
            except FileNotFoundError:
                print("curl not found. Please install curl and ensure it's in your PATH.")
                return 1
            except Exception as e: #catch other exceptions like file not found
                print(f"A unexpected error occured: {e}")
                return 1

    return 0  # Indicate success


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Upload FHIR resources from  a directory.")
    parser.add_argument("directory", help="The directory to upload from (e.g. example\Patient1).")
    args = parser.parse_args()

    FHIR_DIR = os.path.abspath(args.directory)  # Convert to absolute path!

    resource_types = [ "Bundle"]

    for resource_type in resource_types:
        exit_code = upload_fhir_resource(resource_type, FHIR_DIR)
        if exit_code != 0:
            exit(exit_code) #exit with error code if something went wrong

    print("Upload complete.")