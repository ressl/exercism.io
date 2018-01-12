#!/bin/bash

INPUT=$*

reverse() {
  echo "${INPUT}" | rev
}

reverse
