package twofer

import "fmt"

// ShareWith fill in the name of the little game
func ShareWith(s string) string {
	you := s

	if len(you) == 0 {
		you = "you"
	}

	return fmt.Sprintf("One for %s, one for me.", you)
}
