def filter_and_write_numbers(input_file, output_file):
    try:
        # Read numbers from the input file
        with open(input_file, 'r') as file:
            lines = file.readlines()

        # Filter and clean the numbers
        numbers = [line.strip().strip('|').strip() for line in lines]
        
        # Join numbers with a comma
        numbers_str = ','.join(numbers)
        
        # Write the filtered numbers to the output file
        with open(output_file, 'w') as file:
            file.write(numbers_str)

        print(f"Filtered numbers have been written to {output_file}")

    except Exception as e:
        print(f"An error occurred: {e}")

# Example usage:
input_file = 'diagnosos_ID.txt'   # Replace with your input file path
output_file = 'filteredDiagnosos_id.txt' # Replace with your output file path
filter_and_write_numbers(input_file, output_file)
