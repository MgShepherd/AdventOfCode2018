package utils

import "fmt"
import "os"

func ReadProblemFile(problemNum int) (string, error) {
	filePath := fmt.Sprintf("inputs/problem%d.txt", problemNum)

	dataBytes, err := os.ReadFile(filePath)
	dataStr := string(dataBytes)

	return dataStr, err
}
