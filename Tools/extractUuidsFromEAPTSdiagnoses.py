import json

# Read your input file
with open("/home/selamsew/Bahmni_Docker/UoG/EMR-eAPTS-mediator/Tools/eaptsDiagnoses.json", "r") as f:
    data = json.load(f)

uuids = []

# Loop through items in "model"
for item in data.get("model", []):
    # Get rowguid at the current level
    if "rowguid" in item:
        uuids.append(item["rowguid"])

# Write the uuids array to a new JSON file
with open("/home/selamsew/Bahmni_Docker/UoG/EMR-eAPTS-mediator/Tools/eaptsDiagnosesuuids.json", "w") as f:
    json.dump(uuids, f, indent=4)

print("UUIDs saved to eaptsDiagnosesuuids.json")
