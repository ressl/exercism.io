package scrabble

import (
	"strings"
)

// Score calculate the score of a word for the game scrabble
func Score(input string) int {
	scrabbleScores := map[string]int{
		"aeioulnrst": 1,
		"dg":         2,
		"bcmp":       3,
		"fhvwy":      4,
		"k":          5,
		"jx":         8,
		"qz":         10,
	}

	words := strings.Split(strings.ToLower(input), "")
	score := 0

	for _, word := range words {
		for scrabbleScore, points := range scrabbleScores {
			if strings.Contains(scrabbleScore, word) {
				score += points
			}
		}
	}

	return score
}
