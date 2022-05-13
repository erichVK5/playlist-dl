#!/bin/bash

# remove un-necessary non ASCII from unsanitised playlists
# and try to fix cyrillic munged by poorly configured radio station mysql playlist backends 
#
# i.e. in following format
# GROUP - SONG NAME (vocal mix) [radio edit]
# 21/05/2022
# 12:54pm

cat tests/*.txt | grep -v " pm" | grep -v "/2" | sed 's/\xc3\x91\xc2\x8E/ю/g' |sed 's/\xc3\x90\xc2\xB0/а/g' |sed 's/\xc3\x90\xc2\xB1/б/g' |sed 's/\xc3\x91\xc2\x86/ц/g' |sed 's/\xc3\x90\xc2\xB4/д/g' |sed 's/\xc3\x90\xc2\xB5/е/g' |sed 's/\xc3\x91\xc2\x84/ф/g' |sed 's/\xc3\x90\xc2\xB3/г/g' |sed 's/\xc3\x91\xe2\x80\xa6/х/g' |sed 's/\xc3\x90\xc2\xB8/и/g' |sed 's/\xc3\x90\xc2\xB9/й/g' |sed 's/\xc3\x90\xc2\xBA/к/g' |sed 's/\xc3\x90\xc2\xBB/л/g' |sed 's/\xc3\x90\xc2\xBC/м/g' |sed 's/\xc3\x90\xc2\xBD/н/g' |sed 's/\xc3\x90\xc2\xBE/о/g' |sed 's/\xc3\x90\xc2\xBF/п/g' |sed 's/\xc3\x91\xc2\x8F/я/g' | sed 's/\xc3\x91\xe2\x82\xac/р/g' |sed 's/\xc3\x91\xc2\x81/с/g' |sed 's/\xc3\x91\xe2\x80\x9a/т/g' |sed 's/\xc3\x91\xc6\x92/у/g' |sed 's/\xc3\x90\xc2\xB6/ж/g' |sed 's/\xc3\x90\xc2\xB2/в/g' |sed 's/\xc3\x91\xc2\x8C/ь/g' |sed 's/\xc3\x91\xe2\x80\xb9/ы/g' |sed 's/\xc3\x90\xc2\xB7/з/g' |sed 's/\xc3\x91\xc2\x88/ш/g' |sed 's/\xc3\x91\xc2\x8D/э/g' |sed 's/\xc3\x91\xc2\x89/щ/g' |sed 's/\xc3\x91\xe2\x80\xa1/ч/g' |sed 's/\xc3\x91\xc2\x8A/ъ/g' |sed 's/\xc3\x90\xc2\xAE/Ю/g' |sed 's/\xc3\x90\xc2\x90/А/g' |sed 's/\xc3\x90\xc2\x91/Б/g' |sed 's/\xc3\x90\xc2\xA6/Ц/g' |sed 's/\xc3\x90\xc2\x94/Д/g' |sed 's/\xc3\x90\xc2\x95/Е/g' |sed 's/\xc3\x90\xc2\xA4/Ф/g' |sed 's/\xc3\x90\xc2\x93/Г/g' |sed 's/\xc3\x90\xc2\xA5/Х/g' |sed 's/\xc3\x90\xc2\x98/И/g' |sed 's/\xc3\x90\xc2\x99/Й/g' |sed 's/\xc3\x90\xc5\xA1/К/g' |sed 's/\xc3\x90\xc2\x9B/Л/g' |sed 's/\xc3\x90\xc5\x93/М/g' |sed 's/\xc3\x90\xc2\x9D/Н/g' |sed 's/\xc3\x90\xc2\x9E/О/g' |sed 's/\xc3\x90\xc5\xb8/П/g' |sed 's/\xc3\x90\xc2\xAF/Я/g' |sed 's/\xc3\x90\x20/Р/g' |sed 's/\xc3\x90\xc2\xA1/С/g' |sed 's/\xc3\x90\xc2\xA2/Т/g' |sed 's/\xc3\x90\xc2\xA3/У/g' |sed 's/\xc3\x90\xc2\x96/Ж/g' |sed 's/\xc3\x90\xe2\x80\x99/В/g' |sed 's/\xc3\x90\xc2\xAC/Ь/g' |sed 's/\xc3\x90\xc2\xAB/Ы/g' |sed 's/\xc3\x90\xe2\x80\x94/З/g' |sed 's/\xc3\x90\xc2\xA8/Ш/g' |sed 's/\xc3\x90\xc2\xAD/Э/g' |sed 's/\xc3\x90\xc2\xA9/Щ/g' |sed 's/\xc3\x90\xc2\xA7/Ч/g' | sed 's/’//g' | sed 's/‘//g' | sed 's/â€™//g' | sed 's/Ã«/e/g' | sed 's/Ã©/e/g' | sed 's/“/\"/g' | sed 's/”/\"/g' | sed 's/″/\"/g' | sed 's/…/ /g' | sed 's/Â´//g' | sed 's/ï¼š/:/g' | sed 's/â€"//g' | sed 's/Ã®/i/g' | sed 's/Ã¨/e/g' | sed 's/Ã³/o/g' | sed 's/Ã˜/O/g' | sed 's/Ã¶/o/g' | sed 's/Ã¼/u/g' | sed 's/Ã¡/a/g' | sed 's/Ãº/u/g' | sed 's/Ã¹/u/g' | sed 's/ – / /g' | sed 's/ - /  /g' | sort -u


# remove non ascii to make text play nicely with python subsequently, but can munge some cyrillic
#| grep -v -P "[\x80-\xFF]"

# alternative way to remove duplicates
#| awk '!seen[$0]++'
