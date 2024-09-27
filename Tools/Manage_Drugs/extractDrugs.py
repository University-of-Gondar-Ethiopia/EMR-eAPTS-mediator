import json
import csv

# Path to the input JSON file
json_file_path = "drugConfigFrom_eAPTS.json"

# Reading JSON data from the file
with open(json_file_path, 'r') as json_file:
    data = json.load(json_file)

# Extracting data and preparing CSV content
csv_data = [["uuid", "Name", "Generic Name", "Strength", "Dosage Form"]]

for item in data["model"]:
    csv_data.append([item["itemUuid"], item["genericName"], item["genericName"], item["strength"], item["dosage"]])

# Path to the output CSV file
csv_file_path = "Drugs.csv"

# Writing to CSV
with open(csv_file_path, mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerows(csv_data)

print(f"CSV file '{csv_file_path}' created successfully.")
