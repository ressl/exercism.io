
set -x
num_squares=$1


if [ $num_squares -gt 0 ] && [ $num_squares -lt 65 ]; then
	n_th=$( echo "2^$(( num_squares-1 ))" | bc  )
	num=$(( 1 - $( echo "2^$num_squares" | bc ) ))
	dem=$(( 1 - 2 ))
	echo $n_th
else
	echo "Error: invalid input"
	exit 1
fi
