#!/usr/bin/env bash

#Change manually 'Input sources' and "spotlight' shortcuts"
template="\n\
{ \n\
    \"conditions\": [ \n\
        { \n\
            \"bundle_identifiers\": [ \n\
                \"^com\\\\\\\\.apple\\\\\\\\.Terminal$\",\n\
                \"^com\\\\\\\\.jwilm\\\\\\\\.Alacritty$\",\n\
                \"^com\\\\\\\\.googlecode\\\\\\\\.iterm2$\",\n\
                \"^co\\\\\\\\.zeit\\\\\\\\.hyperterm$\",\n\
                \"^co\\\\\\\\.zeit\\\\\\\\.hyper$\"\n\
            ], \n\
            \"type\": \"frontmost_application_if\" \n\
        } \n\
    ], \n\
    \"from\": { \n\
        \"key_code\": \"%s\", \n\
        \"modifiers\": { \n\
            \"mandatory\": [ \n\
                \"option\" \n\
            ], \n\
            \"optional\": [ \n\
                \"any\" \n\
            ] \n\
        } \n\
    }, \n\
    \"to\": [ \n\
        { \n\
            \"key_code\": \"%s\", \n\
            \"modifiers\": [ \n\
                \"command\" \n\
            ] \n\
        } \n\
    ], \n\
    \"type\": \"basic\" \n\
},\n\n"

for letter in {0..9}
do
    printf "$template" "$letter" "$letter"
done
