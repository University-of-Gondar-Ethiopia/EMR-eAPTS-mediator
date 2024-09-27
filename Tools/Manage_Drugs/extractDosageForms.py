import json
import csv

# Path to the input JSON file
json_file_path = "drugConfigFrom_eAPTS.json"

# Reading JSON data from the file
with open(json_file_path, 'r') as json_file:
    data = json.load(json_file)

# Extracting unique dosage values
unique_dosages = set()
for item in data["model"]:
    dosage = item.get("dosage")
    if dosage is not None:
        unique_dosages.add(dosage)

# Path to the output CSV file
csv_file_path = "Drug_Dosage_Forms_concepts.csv"

# Writing unique dosages to a CSV file
with open(csv_file_path, mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["dosage"])  # Write header
    for dosage in unique_dosages:
        writer.writerow([dosage])

print(f"CSV file '{csv_file_path}' with unique dosages created successfully.")
