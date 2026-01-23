#!/bin/bash
whois "$1" | awk -F': ' '
BEGIN { 
    OFS="," 
}
/^(Registrant|Admin|Tech) (Name|Organization|Street|City|State\/Province|Postal Code|Country|Phone|Fax|Email)/ {
    field = $1
    value = $2
    gsub(/^[ \t]+|[ \t]+$/, "", value)
    
    if (field ~ /Street$/) {
        print field "," value " "
    } else if (field ~ /Phone$/) {
        print field "," value
        print field " Ext:,"
    } else if (field ~ /Fax$/) {
        print field "," value
        print field " Ext:,"
    } else {
        print field "," value
    }
}' | tr -d '\r' | awk 'NR > 1 { print prev } { prev = $0 } END { printf "%s", prev }' > "$1.csv"
