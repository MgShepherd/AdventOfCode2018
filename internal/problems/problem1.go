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
	lines := strings.Split(data, "\n")
	i, currentFreq := 0, 0
	freqs := make(map[int]int)

	for {
		line := strings.TrimSpace(lines[i])
		i = (i + 1) % len(lines)
		if len(line) == 0 {
			continue
		}

		freq, err := strconv.Atoi(line)
		if err != nil {
			fmt.Printf("Unable to convert %s to integer\n", line)
			return 0
		}

		currentFreq += freq
		if freqs[currentFreq] != 0 {
			return currentFreq
		} else {
			freqs[currentFreq] = 1
		}
	}
}
