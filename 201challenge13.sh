#!/bin/bash
echo "Please enter a domain. (Ex. www.google.com)"

read domain

function output {
    whois $domain
    dig $domain
    host $domain
    nslookup $domain
}

output > challenge13.txt