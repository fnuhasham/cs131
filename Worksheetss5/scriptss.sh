#!/bin/bash

# Define the categories
categories=("Music" "Entertainment" "Gaming" "Comedy")

# Iterate over the categories
for category in "${categories[@]}"
do

    grep "United States" "Global YouTube Statistics.csv" | grep "$category" > "Worksheetss5/United States/$category.txt"
done

wc -l "Worksheetss5/United States/Music.txt" "Worksheetss5/United States/Entertainment.txt" "Worksheetss5/United States/Gaming.txt" "Worksheetss5/United States/Comedy.txt" > ws5.txt

