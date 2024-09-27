import json
from datetime import datetime

def read_json(json_file_path):
    with open(json_file_path, 'r', encoding='utf-8') as file:
        data = json.load(file)
    return data['model']

def generate_insert_statements(data):
    sql_statements = []
    for item in data:
        # Handling null values
        concept_id_generic = 'NULL' if item['genericName'] is None else f'(SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "{item["genericName"]}")'
        name_generic = 'NULL' if item['genericName'] is None else f'"{item["genericName"]}"'
        
        concept_id_dosage = 'NULL' if item['dosage'] is None else f'(SELECT c.concept_id FROM concept c INNER JOIN concept_name cn ON c.concept_id = cn.concept_id WHERE cn.name = "{item["dosage"]}")'
        dosage = 'NULL' if item['dosage'] is None else f'"{item["dosage"]}"'
        
        creator = 123  # This value should be replaced with the actual creator's ID or value
        date_created = 'now()'  # Keeping SQL syntax for current timestamp
        retired = 0
        uuid = 'NULL' if item['itemUuid'] is None else f'"{item["itemUuid"]}"'
        strength = 'NULL' if item['strength'] is None else f'"{item["strength"]}"'

        sql = f"""
        INSERT INTO drug (concept_id, name, dosage_form, creator, date_created, retired, uuid, strength) VALUES (
            {concept_id_generic},
            {name_generic},
            {concept_id_dosage},
            {creator},
            {date_created},
            {retired},
            {uuid},
            {strength}
        );
        """
        sql_statements.append(sql.strip())

    return sql_statements

def main():
    json_file_path = 'drugConfigFrom_eAPTS.json'  # Path to your JSON file
    output_sql_file_path = 'drugs.sql'   # Output SQL file path
    data = read_json(json_file_path)
    sql_statements = generate_insert_statements(data)

    with open(output_sql_file_path, 'w', encoding='utf-8') as file:
        for statement in sql_statements:
            file.write(statement + '\n')
            # Optionally, print each statement as well
            # print(statement)

    print(f"SQL statements have been written to {output_sql_file_path}")

if __name__ == "__main__":
    main()
