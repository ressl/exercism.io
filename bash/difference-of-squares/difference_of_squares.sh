#!/usr/bin/env bash

# debug
# set -x
PROJECT_NAME="difference_of_squares"
PROJECT_ENTRY="$PROJECT_NAME"

showhelp() {
  echo "Usage: $PROJECT_ENTRY command ...[parameters]....
Commands:
  -S             square of sum
  -s             sum of squares
Example:
  $PROJECT_ENTRY -S
  "
}

sum() {
  declare -ir NUMBER=$1
  for ((n=1; n<=NUMBER; n++)); do
    declare -g SUM=$((n+SUM))
  done
}

squares_sum() {
  sum "$@"
  declare -g SQUARES_SUM=$((SUM**2))
  [[ "${_square_of_sum}" -ne 0 ]] && echo $SQUARES_SUM
}

sum_squares() {
  declare -ir NUMBER=$1
  for ((n=1; n<=NUMBER; n++)); do
    SQUARES=$((n**2))
    declare -g SUM_SQUARES=$((SUM_SQUARES+SQUARES))
  done
  [[ "${_sum_of_squares}" -ne 0 ]] && echo $SUM_SQUARES
}

difference() {
  squares_sum "$1"
  sum_squares "$1"
  declare -g difference=$((SQUARES_SUM-SUM_SQUARES))
  echo $difference
}

opts() {
while getopts "sS" opt; do
  case $opt in
    S)
      declare -gi _square_of_sum=1
      ;;
    s)
      declare -g _sum_of_squares=1
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
}

main() {
  [[ -z "$1" ]] && showhelp && return
  opts "$2"
  [[ "${_square_of_sum}" -ne 0 ]] && squares_sum "$1" && return
  [[ "${_sum_of_squares}" -ne 0 ]] && sum_squares "$1" && return
  difference "$1"
}

main "$@"
