#!/bin/bash

# debug
# set -x

# turn it on
shopt -s extglob
# trim trailing whitespaces
INPUT=${*%%*( )}
# turn it off
shopt -u extglob

bob() {
  if [ -z "${INPUT}" ]; then
     echo 'Fine. Be that way!'
  elif [[ "${INPUT:1}" =~ [[:upper:]]+\?$ && ! "${INPUT:1}" =~ [[:lower:]] ]]; then
     # Error in test script:
     # He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
     # echo "Calm down, I know what I'm doing!"
     echo "Whoa, chill out!"
  elif [[ "${INPUT:1}" =~ [[:upper:]] && ! "${INPUT:1}" =~ [[:lower:]] ]]; then
    echo "Whoa, chill out!"
  elif [[ "${INPUT}" =~ [^.!?]+\?$ ]]; then
    echo "Sure."
  else
    echo "Whatever."
  fi
}

bob
