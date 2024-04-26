#!/bin/bash

while IFS=, read -r rank youtuber subscribers video_views category rest; do
    if [[ "$category" == "Music" ]]; then
        echo "$youtuber" >> "UnitedStates/Music.txt"
    elif [[ "$category" == "Entertainment" ]]; then
        echo "$youtuber" >> "UnitedStates/Entertainment.txt"
    elif [[ "$category" == "Gaming" ]]; then
        echo "$youtuber" >> "UnitedStates/Gaming.txt"
    elif [[ "$category" == "Comedy" ]]; then
        echo "$youtuber" >> "UnitedStates/Comedy.txt"
    fi
done < 'Global YouTube Statistics.csv' 

# count ent
wc -l  "UnitedStates/Music.txt" \
       "UnitedStates/Entertainment.txt" \
       "UnitedStates/Gaming.txt" \
       "UnitedStates/Comedy.txt" > ws5.txt

