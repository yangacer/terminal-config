#!/bin/bash

input=$1
output=$2

pandoc -s -o $output -f markdown -t html5 $input
