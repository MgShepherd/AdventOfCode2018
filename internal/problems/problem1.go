package problems

import (
	"fmt"
	"michael/aoc-2018/internal/utils"
	"strconv"
	"strings"
)

func SolveProblem1() int {
	data, err := utils.ReadProblemFile(1)
	if err != nil {
		fmt.Println("Unable to read file, error:", err)
		return 0
	}

	return computeFrequency(data)
}

func computeFrequency(data string) int {
	totalFreq := 0
	for _, line := range strings.Split(data, "\n") {
		line = strings.TrimSpace(line)
		if len(line) == 0 {
			continue
		}

		freq, err := strconv.Atoi(line)
		if err != nil {
			fmt.Printf("Unable to convert %s to integer\n", line)
			return 0
		}
		totalFreq += freq
	}

	return totalFreq
}
