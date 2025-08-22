package main

import "core:fmt"
import "core:strconv"
import "core:strings"

problem1 :: proc() -> (int, bool) {
	data, success := read_problem_file(1)
	if !success {
		return -1, false
	}

	return solve_part_1(data)
}

@(private = "file")
solve_part_1 :: proc(data: string) -> (result: int, success: bool) {
	success = true
	result = 0

	for line in strings.split(data, "\n") {
		trimmed := strings.trim_space(line)
		if len(trimmed) == 0 {
			continue
		}

		val, ok := strconv.parse_int(trimmed)
		if !ok {
			success = false
			return
		}
		result += val
	}

	return
}
