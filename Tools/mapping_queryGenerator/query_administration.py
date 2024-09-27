import json

# Read JSON data from a file
with open("../needsMapping/Administration.json", "r") as file:
    data = json.load(file)

# Initialize a list to hold the SQL queries
queries = []

# Begin the transaction
queries.append("START TRANSACTION;")

# Create a temporary table
queries.append("CREATE TEMPORARY TABLE temp_concept_ids (concept_id INT);")

# Iterate over each item in the model
for item in data["model"]:
    name = item["name"]
    rowguid = item["rowguid"]
    
    # Insert the concept_id into the temporary table
    insert_query = f"""
    INSERT INTO temp_concept_ids (concept_id)
    SELECT cn.concept_id 
    FROM concept_name cn 
    INNER JOIN concept c ON c.concept_id = cn.concept_id 
    WHERE cn.name = '{name}' AND cn.concept_name_type = 'FULLY_SPECIFIED';
    """
    
    # Update the concept table using the temporary table
    update_query = f"""
    UPDATE concept 
    SET uuid = '{rowguid}' 
    WHERE concept_id IN (SELECT concept_id FROM temp_concept_ids);
    """
    
    queries.append(insert_query.strip())
    queries.append(update_query.strip())
    queries.append("TRUNCATE TABLE temp_concept_ids;")  # Clear the temporary table for the next iteration

# Drop the temporary table
queries.append("DROP TEMPORARY TABLE temp_concept_ids;")

# Commit the transaction
queries.append("COMMIT;")

# Write the single combined query to a file
with open("../queries/AdministrationMapping.sql", "w") as file:
    file.write("\n".join(queries))

print("SQL queries have been written to PaymentTypeMapping.sql")
