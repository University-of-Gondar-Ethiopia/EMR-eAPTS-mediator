# read_uuids_generate_sql.py

input_file = "/home/selamsew/Bahmni_Docker/UoG/EMR-eAPTS-mediator/Tools/opds.txt"   # file containing your UUIDs (one per line)
output_file = "/home/selamsew/Bahmni_Docker/UoG/EMR-eAPTS-mediator/Tools/emr_OPDpatientTypeMapping.sql"

entity2_uuid = "c5129e01-02b6-44e5-8386-7f5c5a7f9266"

with open(input_file, "r") as f:
    uuids = [line.strip() for line in f if line.strip()]

with open(output_file, "w") as f:
    for entity1_uuid in uuids:
        query = f"INSERT INTO entity_mapping (uuid, entity_mapping_type_id, entity1_uuid, entity2_uuid, date_created) VALUES (uuid(), 6, '{entity1_uuid}', '{entity2_uuid}', NOW());\n"
        f.write(query)

print(f"SQL file '{output_file}' generated successfully with {len(uuids)} queries.")
