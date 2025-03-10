import subprocess
import os
import time

base_directory = "example"  # The root directory containing Patient1, Patient2, etc.

start_time = time.time()  # Record the start time

for i in range(1, 16):  # Adjust the range as needed
    patient_directory = os.path.join(base_directory, f"Patient{i}")
    #check if the directory exists, if not, create it
    if not os.path.exists(patient_directory):
        print(f"Directory {patient_directory} does not exist. ")
        exit(1)
    command = ["python", "load_bundles.py", patient_directory]
    print(f"Running command: {command}")
    subprocess.run(command, check=True)  #check=True will raise an exception if the command fails

end_time = time.time()  # Record the end time

total_time = end_time - start_time  # Calculate the total time

print(f"All uploads complete. Total execution time: {total_time:.2f} seconds")