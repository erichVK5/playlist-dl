#!/bin/bash
cat tests/*.txt | grep -v " pm" | grep -v "/2" | sed 's/’/\'/g' | sed 's/‘/\'/g' | sed 's/â€™/\'/g' | sed 's/Ã«/e/g' | sed 's/Ã©/e/g' | sed 's/“/"/g' | sed 's/”/"/g' | sed 's/″/"/g' | awk '!seen[$0]++'
