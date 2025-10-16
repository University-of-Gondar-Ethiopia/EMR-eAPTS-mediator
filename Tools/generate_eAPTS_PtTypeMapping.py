# read_uuids_generate_sql.py

input_file = "/home/selamsew/Bahmni_Docker/UoG/EMR-eAPTS-mediator/Tools/IPDs.txt"   # file containing your UUIDs (one per line)
output_file = "/home/selamsew/Bahmni_Docker/UoG/EMR-eAPTS-mediator/Tools/emr_IPDpatientTypeMapping.sql"

DEFAULT_ROWGUID = "1bd1a227-3f8c-4879-88ec-8f3b9c2692d3"

with open(input_file, "r") as f:
    uuids = [line.strip() for line in f if line.strip()]

with open(output_file, "w") as f:
    for uuid in uuids:
        query = (
            "INSERT INTO mapping.patient_type("
            "patient_type_id, patient_type_rowguid, emr_rowguid, "
            "is_active, created_by, created_date, modified_by, modified_date, rowguid) "
            f"VALUES ((SELECT id FROM du.patient_type WHERE rowguid='{DEFAULT_ROWGUID}'), "
            f"'{DEFAULT_ROWGUID}', '{uuid}', true, 1, NOW(), 1, NOW(), uuid_generate_v4());\n"
        )
        f.write(query)

print(f"SQL file '{output_file}' generated successfully with {len(uuids)} queries.")
