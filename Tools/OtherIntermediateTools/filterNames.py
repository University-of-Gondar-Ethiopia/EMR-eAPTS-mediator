import json

# Load the JSON data
with open('../needsMapping/PaymentType.json', 'r') as file:
    data = json.load(file)

# Extract names
names = []
for item in data['model']:
    names.append(item['rowguid'])

# Write names to a new file
with open('PaymentType.txt', 'w') as file:
    for name in names:
        file.write(f"{name}\n")

# Example usage:
# python script.py
