package main

import "core:fmt"
import "core:strconv"
import "core:strings"

problem1 :: proc() -> (int, bool) {
	data, success := read_problem_file(1)
	if !success {
		return -1, false
	}

	return solve_part_2(data)
}

@(private = "file")
solve_part_2 :: proc(data: string) -> (result: int, success: bool) {
	success = true
	current := 0

	freqs := make(map[int]int)
	lines := strings.split(data, "\n")
	idx := -1

	for {
		idx = (idx + 1) % len(lines)
		trimmed := strings.trim_space(lines[idx])
		if len(trimmed) == 0 {
			continue
		}

		val, ok := strconv.parse_int(trimmed)
		if !ok {
			success = false
			return
		}
		current += val

		if current in freqs {
			result = current
			return
		}

		freqs[current] = 0
	}

	return
}
