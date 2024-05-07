

#!/bin/bash

# Define categories
Categories=("Music" "Entertainment" "Gaming" "Comedy")

# For-loop for categories entries
for category in "${Categories[@]}"
do
    # Create directory if it doesn't exist
    mkdir -p "Worksheet 5/United States/$category"

    # Use awk to filter entries from the United States and the specific category
    awk -F',' '$4=="United States" && $5=="'"$category"'" {print $0}' 'Global YouTube Statistics.csv' > "Worksheet 5/United States/$category.txt"
done

