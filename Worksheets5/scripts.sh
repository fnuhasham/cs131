#!/bin/bash

# Define the categories
categories=("Music" "Entertainment" "Gaming" "Comedy")

# Iterate over the categories
for category in "${categories[@]}"
do
    # Redirect entries from 'United States' to the respective category file
    grep "United States" "YouTubers.csv" | grep "$category" > "Worksheets5/United States/$category.txt"
done
 fm lv  kgnvfkggkgnetgnteg
# Count the number of entries in each category file and store the counts in ws5.txt
wc -l "Worksheets5/United States/Music.txt" "Worksheets5/United States/Entertainment.txt" "Worksheets5/United States/Gaming.txt" "Worksheets5/United States/Comedy.txt" > ws5.txt
