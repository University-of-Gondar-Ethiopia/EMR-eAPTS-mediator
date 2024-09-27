import json
import csv

def json_to_csv(json_file, csv_file):
    # Read the JSON data from the file
    with open(json_file, 'r') as file:
        data = json.load(file)
    
    # Open the CSV file for writing
    with open(csv_file, 'w', newline='') as file:
        writer = csv.writer(file)
        # Write the header
        writer.writerow(['diseaseCategory', 'name'])
        
        # Iterate over the items in the JSON data and write to the CSV
        for item in data.get('model', []):
            disease_category = item.get('diseaseCategory', {}).get('name', '')
            name = item.get('name', '')
            writer.writerow([disease_category, name])

# Example usage
json_file = '../needsMapping/DiagnosisType.json'
csv_file = 'diseaseCategory.csv'
json_to_csv(json_file, csv_file)
