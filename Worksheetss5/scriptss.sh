#!/bin/bash

# Define the categories
categories=("Music" "Entertainment" "Gaming" "Comedy")

# Iterate over the categories
for category in "${categories[@]}"
do
    # Redirect entries from 'United States' to the respective category file
    grep "United States" "Global YouTube Statistics.csv" | grep "$category" > "Worksheetss5/United States/$category.txt"
done

# Count the number of entries in each category file and store the counts in ws5.txt
wc -l "Worksheetss5/United States/Music.txt" "Worksheetss5/United States/Entertainment.txt" "Worksheetss5/United States/Gaming.txt" "Worksheetss5/United States/Comedy.txt" > ws5.txt

