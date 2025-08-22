package main

import "core:fmt"

main :: proc() {
	result, success := problem1()
	if !success {
		fmt.printf("There was a issue when trying to solve the problem\n")
	} else {
		fmt.printf("Solution to the problem is: %d\n", result)
	}
}
