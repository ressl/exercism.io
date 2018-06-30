package isogram

import (
	"strings"
)

// IsIsogram check in the input is a isogram
func IsIsogram(input string) bool {
	clean := strings.Replace(strings.Replace(input, "-", "", -1), " ", "", -1)
	word := strings.Split(strings.ToUpper(clean), "")
	count := map[string]bool{}
	status := true

	for v := range word {
		if _, ok := count[word[v]]; ok {
			status = false
			break
		} else {
			count[word[v]] = true
		}
	}
	return status
}
