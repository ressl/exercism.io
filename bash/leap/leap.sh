#!/bin/bash

# set -x
declare -r INPUT=${*}
declare -r INPUTCHECK=${2}

error() {
  if [[ ! "${INPUT}" =~ ^[[:digit:]]+$ || "${INPUT}" -eq 0 || "${INPUTCHECK}" -ne 0 ]];then
    echo 'Usage: leap.sh <year>'
    exit 1
  fi
}

leap() {
  declare -ir four="$((INPUT%4))"
  declare -ir hundred="$((INPUT%100))"
  declare -ir fourhundred="$((INPUT%400))"
  if [[ ($four -eq 0 && $hundred -ne 0 ) || ( $hundred -eq 0  &&  $fourhundred -eq 0 ) ]];then
    echo 'true'
  else
    echo 'false'
  fi
}

main() {
 error
 leap
}

main
