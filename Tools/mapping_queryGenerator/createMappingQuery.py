def generate_mysql_query(file_path, output_path):
    # Read UUIDs from the file
    with open(file_path, 'r') as file:
        uuids = [line.strip() for line in file.readlines()]

    # Create the query string
    query_template = (
        "INSERT INTO mapping.payment_type "
        "( payment_type_id, payment_type_rowguid, emr_rowguid, is_active, created_by, created_date, modified_by, modified_date, rowguid) "
        "VALUES ((select id from common.payment_type where rowguid= '{uuid}'),'{uuid}','{uuid}', "
        "true, 1, NOW(), 1, NOW(), uuid_generate_v4());"

    )

    # Generate queries for each UUID
    queries = [query_template.format(uuid=uuid) for uuid in uuids]

    # Combine all queries into a single string
    final_query = "\n".join(queries)
    
    # Write the queries to the output file
    with open(output_path, 'w') as file:
        file.write(final_query)

# Example usage
input_file_path = 'PaymentType.txt'
output_file_path = '../queries/eAPTS_PaymentTypeMapping1.sql'
generate_mysql_query(input_file_path, output_file_path)
