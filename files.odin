package main

import "core:fmt"
import "core:os"

read_problem_file :: proc(prob_number: int) -> (str_data: string, success: bool) {
	file_name := fmt.aprintf("inputs/problem%d.txt", prob_number)
	defer delete(file_name)

	data, err := os.read_entire_file_from_filename_or_err(file_name)

	if err != nil {
		fmt.printf(
			"Error occurred trying to read file: %s, error: %s\n",
			file_name,
			os.error_string(err),
		)
	}
	str_data = string(data)

	success = err == nil
	return
}
