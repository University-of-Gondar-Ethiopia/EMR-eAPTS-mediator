import json

# File paths
input_file = "/home/selamsew/Bahmni_Docker/UoG/EMR-eAPTS-mediator/Tools/eaptsPaymentTypes.json"
output_file = "/home/selamsew/Bahmni_Docker/UoG/EMR-eAPTS-mediator/Tools/eAPTS_PaymentTypeMapping.sql"

# Read JSON from file
with open(input_file, "r", encoding="utf-8") as f:
    data = json.load(f)

# Open output file for writing
with open(output_file, "w", encoding="utf-8") as f:
    for record in data["model"]:
        sql = (
            "INSERT INTO mapping.payment_type "
            "(payment_type_id, payment_type_rowguid, emr_rowguid, is_active, created_by, created_date, modified_by, modified_date, rowguid) "
            f"VALUES ((SELECT id FROM common.payment_type WHERE rowguid='{record['rowguid']}'), "
            f"'{record['rowguid']}', '{record['rowguid']}', {str(record['isActive']).lower()}, "
            f"{record['createdBy']}, NOW(), {record['modifiedBy']}, NOW(), uuid_generate_v4());"
        )
        f.write(sql + "\n")

print(f"✅ SQL script generated: {output_file}")
