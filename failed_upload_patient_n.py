Failed attempt to search/replace patient identifier

import requests
import subprocess
import os
import json
import argparse
import shlex

FHIR_SERVER = "http://localhost:8080"

def upload_fhir_resource(resource_type, directory, replacement_string):
    directory = os.path.abspath(directory)
    print(f"Processing directory: {directory}")

    if not os.path.exists(directory):
        print(f"Error: Directory '{directory}' does not exist.")
        return 1

    for filename in os.listdir(directory):
        if filename.endswith(".json") and filename.startswith(resource_type):
            filepath = os.path.join(directory, filename)
            print(f"Uploading {filepath} to {FHIR_SERVER}/fhir/{resource_type}")

            try:
                with open(filepath, 'r', encoding='utf-8') as f:
                    resource_json = json.load(f)

                def replace_in_json(data, old_string, new_string):
                    try:
                        if isinstance(data, dict):
                            for key, value in data.items():
                                if isinstance(value, str) and value == old_string:
                                    data[key] = new_string
                                elif isinstance(value, (dict, list)):
                                    replace_in_json(value, old_string, new_string)
                        elif isinstance(data, list):
                            for item in data:
                                replace_in_json(item, old_string, new_string)
                    except Exception as e:
                        print(f"Error during replacement: {e}")
                        raise  # Re-raise the exception after printing the error

                replace_in_json(resource_json, "Patient/1", replacement_string)

                headers = {"Content-Type": "application/fhir+json"}
                try:
                    response = requests.post(f"{FHIR_SERVER}/fhir/{resource_type}", headers=headers, json=resource_json)
                    response.raise_for_status()  # Raise HTTPError for bad responses (4xx or 5xx)
                    print(f"Upload successful. Status code: {response.status_code}")
                    #print(response.json()) # Uncomment to see the response from the server
                    return 0
                except requests.exceptions.RequestException as e:
                    print(f"Error uploading {filename}: {e}")
                    if response is not None: #check if a response was received
                        try:
                            error_json = response.json() #try to get the error message from the FHIR server
                            print(f"Server Response: {json.dumps(error_json, indent = 4)}")
                        except:
                            print(f"Server Response Code: {response.status_code}") #print the error code if the response is not json
                    return 1

            except json.JSONDecodeError as e:  # Handle JSON decoding errors
                print(f"Error decoding JSON in {filename}: {e}")
                return 1
            except Exception as e:
                print(f"An unexpected error occurred: {e}")
                return 1

    return 0


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Upload FHIR resources, replacing a string.")
    parser.add_argument("replacement", help="The string to replace 'Patient/1' with.")
    args = parser.parse_args()

    FHIR_DIR = "example\Patient1"
    REPLACEMENT_STRING = args.replacement

    resource_types = ["Bundle"]  # Or your list of resource types

    for resource_type in resource_types:
        exit_code = upload_fhir_resource(resource_type, FHIR_DIR, REPLACEMENT_STRING)
        if exit_code != 0:
            exit(exit_code)

    print("Upload process complete.")