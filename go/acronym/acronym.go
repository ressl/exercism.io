package acronym

import (
	"strings"
)

// Abbreviate create a acronym from each string
func Abbreviate(s string) string {
	words := strings.Split(strings.Join(strings.Split(s, " "), "-"), "-")

	acronym := ""

	for _, word := range words {
		acronym += string([]rune(word)[0])
	}

	return (strings.ToUpper(acronym))
}
