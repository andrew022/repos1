#!/bin/bash
doc=learning.txt
i=5
v=0
if [[ -f "$doc" ]]
then
    echo "$doc exists. Displaying inside text."
    cat $doc
else
    while [ $v = 0 ]
    do
        echo "$doc does not exist. Do you wish to create one? Enter '1' to proceed or '0' to exit."
        read v
    done
    echo "Creating in 5 seconds."
    while [ $i -gt 0 ]
    do
        echo "Creating in: " $i
        ((i--))
    done
    touch learning.txt
    echo "Challenge 06" >> learning.txt
    echo "File created. Please run script again."
fi