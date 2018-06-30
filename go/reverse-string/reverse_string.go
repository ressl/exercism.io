package reverse

import (
	"strings"
)

//String return a string reverse
func String(s string) string {
	us := []rune(s)
	rev := []string{}
	last := len(us) - 1

	if len(s) == 0 {
		return ""
	}
	for i := last; i >= 0; i-- {
		rev = append(rev, string(us[i]))
	}
	return strings.Join(rev, "")
}
