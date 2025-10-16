import csv

csv_file = "/home/selamsew/Downloads/Diagnosis Set of Sets/concepts.csv"
output_file = "selectDuplicates.sql"

with open(csv_file, newline='', encoding='utf-8') as f, open(output_file, 'w', encoding='utf-8') as sql_file:
    reader = csv.DictReader(f)
    
    for row in reader:
        name = row['name'].replace("'", "''")  # Escape single quotes
        sql = f""" SELECT concept_name, COUNT(*) AS cnt FROM concept_name WHERE concept_name = '{name}' AND concept_name_type = 'FULLY_SPECIFIED' AND locale = 'en' GROUP BY concept_name HAVING COUNT(*) > 1; \n"""
        sql_file.write(sql)

print(f"SQL statements written to {output_file}")
