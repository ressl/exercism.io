package scrabble

import (
	"strings"
)

// Score calculate the score of a word for the game scrabble
func Score(input string) int {
	scrabbleScores := map[int][]string{
		1:  {"a", "e", "i", "o", "u", "l", "n", "r", "s", "t"},
		2:  {"d", "g"},
		3:  {"b", "c", "m", "p"},
		4:  {"f", "h", "v", "w", "y"},
		5:  {"k"},
		8:  {"j", "x"},
		10: {"q", "z"},
	}

	words := strings.Split(strings.ToLower(input), "")
	score := 0

	for _, word := range words {
		for points, scrabbleScore := range scrabbleScores {
			if strings.Contains(strings.Join(scrabbleScore, ""), word) {
				score += points
			}
		}
	}

	return score
}
