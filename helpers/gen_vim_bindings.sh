#!/usr/bin/env bash

#Change manually 'Input sources' and "spotlight' shortcuts"
template="\n\
{ \n\
    \"conditions\": [ \n\
        { \n\
            \"bundle_identifiers\": [ \n\
                \"^com\\\\\\\\.microsoft\\\\\\\\.VSCode$\"\n\
            ], \n\
            \"type\": \"frontmost_application_if\" \n\
        } \n\
    ], \n\
    \"from\": { \n\
        \"key_code\": \"%s\", \n\
        \"modifiers\": { \n\
            \"mandatory\": [ \n\
                \"command\" \n\
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
                \"control\" \n\
            ] \n\
        } \n\
    ], \n\
    \"type\": \"basic\" \n\
},\n\n"

# C-b      Move back one full screen (page up)
# C-d      Move forward 1/2 screen; half page down
## C-e      Scroll window [count] lines downwards in the buffer. (VSCode uses it for focusing the files view)
## C-f      Move forward one full screen (page down) (VSCode uses it for focusing the search view)
# C-g      Go to
# C-h      Delete backwards
# C-j      Custom (Move to the left buffer)
# C-k      Custom (Move to the right buffer)
# C-n      Keyword completion
# C-o      Move to the previous cursor location
## C-p      Iterate backwards suggested completions (Not for VSCode)
# C-r      Redo
# C-u      Move back (up) 1/2 screen; half page up
# C-v      Enter visual mode for selection of BLOCKS
# C-w      Window operations
# C-y      Scroll window [count] lines upwards in the buffer.

for letter in 'b' 'd' 'g' 'h' 'j' 'k' 'n' 'o' 'r' 'u' 'v' 'w' 'y' 'open_bracket' 'close_bracket'
do
    printf "$template" "$letter" "$letter"
done
