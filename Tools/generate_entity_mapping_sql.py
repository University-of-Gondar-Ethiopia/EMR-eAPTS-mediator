import json

# Input and output file paths
input_file = "/home/selamsew/Bahmni_Docker/UoG/EMR-eAPTS-mediator/Tools/V1_VisitType_dispUnit_mappin.json"
output_file = "/home/selamsew/Bahmni_Docker/UoG/EMR-eAPTS-mediator/Tools/V1_VisitType_dispUnit_mappin.sql"

# entity_mapping_type_id fixed value
ENTITY_MAPPING_TYPE_ID = 5

# Read JSON data
with open(input_file, "r") as f:
    data = json.load(f)

# Open SQL file for writing
with open(output_file, "w") as f:
    for record in data:
        vt_uuid = record["vt_uuid"]
        du_uuid = record["du_uuid"]

        sql = (
            f'INSERT INTO entity_mapping (uuid, entity_mapping_type_id, entity1_uuid, entity2_uuid, date_created) '
            f'VALUES (uuid(), {ENTITY_MAPPING_TYPE_ID}, "{vt_uuid}", "{du_uuid}", now());\n'
        )
        f.write(sql)

print(f"✅ SQL statements written to {output_file}")
