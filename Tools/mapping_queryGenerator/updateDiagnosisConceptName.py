import json

# Function to generate the SQL update queries from JSON data
def generate_sql_from_json(json_file, sql_file):
    try:
        # Read the JSON data from the file
        with open(json_file, 'r') as f:
            data = json.load(f)
        
        # Extract the model data
        model_data = data['model']
        
        # Initialize a list to hold the SQL queries
        queries = []
        
        # Begin the transaction
        queries.append("START TRANSACTION;")
        
        # Create a temporary table
        queries.append("CREATE TEMPORARY TABLE temp_concept_ids (concept_id INT);")
        
        # Iterate over each item in the model
        for item in model_data:
            name = item['name']
            rowguid = item['rowguid']
            
            # Insert the concept_id into the temporary table
            insert_query = f"""
            INSERT INTO temp_concept_ids (concept_id)
            SELECT cn.concept_id 
            FROM concept_name cn 
            INNER JOIN concept c ON c.concept_id = cn.concept_id 
            WHERE c.uuid = '{rowguid}';
            """
            
            # Update the concept table using the temporary table
            update_query = f"""
            UPDATE concept_name
            JOIN temp_concept_ids ON concept_name.concept_id = temp_concept_ids.concept_id
            SET concept_name.name = '{name}';
            """
            
            queries.append(insert_query.strip())
            queries.append(update_query.strip())
            queries.append("TRUNCATE TABLE temp_concept_ids;")  # Clear the temporary table for the next iteration
        
        # Drop the temporary table
        queries.append("DROP TEMPORARY TABLE temp_concept_ids;")
        
        # Commit the transaction
        queries.append("COMMIT;")
        
        # Write the combined query to the SQL file
        with open(sql_file, 'w') as f:
            f.write("\n".join(queries))
        
        print(f"SQL queries have been written to {sql_file}")
    
    except Exception as e:
        print(f"An error occurred: {e}")

# Example usage
json_file = '../needsMapping/DiagnosisType.json'  # Replace with your JSON file path
sql_file = 'sql_update_DiagnosisName.sql'  # Replace with your desired SQL file path
generate_sql_from_json(json_file, sql_file)
