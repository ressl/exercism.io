package hamming

import "errors"

// Distance check the difference between two DNA strands
func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return -1, errors.New("must have the same length")
	}

	diff := 0
	for i := range a {
		if a[i] != b[i] {
			diff++
		}
	}

	return diff, nil
}
