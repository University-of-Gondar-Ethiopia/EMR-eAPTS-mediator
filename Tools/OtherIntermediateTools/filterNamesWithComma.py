import json

# Load the JSON data
with open('../needsMapping/DiagnosisType.json', 'r') as file:
    data = json.load(file)

# Extract names and format them with double quotes
names = []
for item in data['model']:
    names.append(f"'{item['name']}'")

# Join the names with commas and write to a new file
with open('DiagnosisTypeName.txt', 'w') as file:
    file.write(','.join(names))
