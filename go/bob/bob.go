package bob

import (
  "strings"
)

// Hey takes the stuff from alice and bob give an answer
func Hey(alice string) string {
  alice = strings.TrimSpace(alice)
  if Empty(alice) {
    return "Fine. Be that way!"
  } else if Yelling(alice) && Question(alice) {
    return "Calm down, I know what I'm doing!"
  } else if Yelling(alice) {
    return "Whoa, chill out!"
  } else if Question(alice) {
    return "Sure."
  } else {
    return "Whatever."
  }
}

// Empty check if s is zero
func Empty(s string) bool {
  return len(s) == 0
}

// Yelling check if all character in s are uppercase
func Yelling(s string) bool {
  return s == strings.ToUpper(s) && s != strings.ToLower(s)
}

// Question check if the end of the line has a question mark
func Question(s string) bool {
  return s[len(s)-1:] == "?"
}
