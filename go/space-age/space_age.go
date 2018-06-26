package space

const earth_year_secound float64 = 31557600

// Age calculate with the seconds from a planet the earth-years
func Age(sec float64, planet string) float64 {
	planets := map[string]float64{
		"Earth":   1,
		"Mercury": 0.2408467,
		"Venus":   0.61519726,
		"Mars":    1.8808158,
		"Jupiter": 11.862615,
		"Saturn":  29.447498,
		"Uranus":  84.016846,
		"Neptune": 164.79132,
	}

	return sec / earth_year_secound / planets[planet]
}
