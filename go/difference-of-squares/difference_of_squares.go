package diffsquares

import (
	"math"
)

// SumOfSquares calculate the sum of squares
func SumOfSquares(number int) int {
	sums := 0
	for i := 1; i <= number; i++ {
		sums += int(math.Pow(float64(i), 2))
	}
	return sums
}

// SquareOfSums calculate the square of sums
func SquareOfSums(number int) int {
	sums := 0
	for i := 1; i <= number; i++ {
		sums += i
	}
	return int(math.Pow(float64(sums), 2))
}

// Difference of SquareOfSums SumOfSquares
func Difference(number int) int {
	return SquareOfSums(number) - SumOfSquares(number)
}
