#!/bin/bash

# remove un-necessary non ASCII from unsanitised playlists
# i.e. in following format
# GROUP - SONG NAME (vocal mix) [radio edit]
# 21/05/2022
# 12:54pm

cat tests/*.txt | grep -v " pm" | grep -v "/2" | sed 's/’//g' | sed 's/‘//g' | sed 's/â€™//g' | sed 's/Ã«/e/g' | sed 's/Ã©/e/g' | sed 's/“/\"/g' | sed 's/”/\"/g' | sed 's/″/\"/g' | sed 's/…/ /g' | sed 's/Ã®/i/g' | sed 's/Ã¨/e/g' | sed 's/Ã³/o/g' | sed 's/Ã˜/O/g' | sed 's/Ã¶/o/g' | sed 's/Ã¼/u/g' | sed 's/Ã¡/a/g' | sed 's/Ãº/u/g' | sed 's/Â´//g' | sed 's/ï¼š/:/g' | sed 's/â€"//g' | sed 's/ – / /g' | sed 's/ - /  /g' | sed 's/Ð·/z/g' | sed 's/Ð°/a/g' | sed 's/Ð²/v/g' | sed 's/Ñ‚/t/g' | sed 's/Ñ€/r/g' | sed 's/Ð°/a/g' | sort -u

# remove non ascii to make text play nicely with python subsequently
#| grep -v -P "[\x80-\xFF]"

# alternative way to remove duplicates
#| awk '!seen[$0]++'
