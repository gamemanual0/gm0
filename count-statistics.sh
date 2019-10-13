#!/usr/bin/env bash

add_numbers='{a+=$1}END{print a}'

EXT="rst"

# Print the word count of all the .$EXT files recursively
printf "Word Count: "
for file in `find . -type f -name "*.$EXT"`;
do
    wc -w "$file"
done | awk "$add_numbers"

# Print the line count of all the .$EXT files recursively
printf "Line Count: "
for file in `find . -type f -name "*.$EXT"`;
do
    wc -l "$file"
done | awk "$add_numbers"

# Print the character count of all the .$EXT files recursively
printf "Character Count: "
for file in `find . -type f -name "*.$EXT"`;
do
    wc -m "$file"
done | awk "$add_numbers"
