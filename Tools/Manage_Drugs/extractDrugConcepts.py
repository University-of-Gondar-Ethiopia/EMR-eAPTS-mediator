import json
import csv

# Path to the input JSON file
json_file_path = "drugConfigFrom_eAPTS.json"

# Reading JSON data from the file
with open(json_file_path, 'r') as json_file:
    data = json.load(json_file)

# Extracting data and preparing CSV content
csv_data = [["name", "class", "datatype"]]

for item in data["model"]:
    csv_data.append([item["genericName"], "Misc", "N/A"])

# Path to the output CSV file
csv_file_path = "Drug_Generic_Name_concepts.csv"

# Writing to CSV
with open(csv_file_path, mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerows(csv_data)

print(f"CSV file '{csv_file_path}' created successfully.")
