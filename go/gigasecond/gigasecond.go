package gigasecond

import (
	"math"
	"time"
)

// AddGigasecond add a gigasecound to the time
func AddGigasecond(t time.Time) time.Time {
	gigasec := math.Pow(10, 9)

	return t.Add(time.Second * time.Duration(gigasec))
}
