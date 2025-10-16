import csv

# Path to your CSV file
csv_file = "/home/selamsew/Downloads/Diagnosis Set of Sets/concepts.csv"
# Output SQL file
output_file = "updateDiagUuid.sql"

with open(csv_file, newline='', encoding='utf-8') as f, open(output_file, 'w', encoding='utf-8') as out_f:
    reader = csv.DictReader(f)
    
    for row in reader:
        uuid = row['uuid']
        name = row['name'].replace("'", "''")  # Escape single quotes for SQL
        sql = f"UPDATE concept SET uuid = '{uuid}' WHERE concept_id = (SELECT concept_id FROM concept_name WHERE concept_name = '{name}' AND concept_name_type = 'FULLY_SPECIFIED' AND locale = 'en');\n"
        out_f.write(sql)

print(f"SQL update statements written to {output_file}")
