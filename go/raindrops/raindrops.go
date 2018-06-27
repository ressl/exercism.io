package raindrops

import (
	"sort"
	"strconv"
)

//Convert a number to a string, the contents of which depend on the number's factors
func Convert(number int) string {
	raindropsMap := map[int]string{
		3: "Pling",
		5: "Plang",
		7: "Plong",
	}

	keys := []int{}
	for k := range raindropsMap {
		keys = append(keys, k)
	}
	sort.Ints(keys)

	conv := ""
	for _, k := range keys {
		if number%k == 0 {
			conv += raindropsMap[k]
		}
	}

	if len(conv) == 0 {
		return strconv.Itoa(number)
	}

	return conv
}
