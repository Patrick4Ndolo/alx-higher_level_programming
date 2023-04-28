#!/bin/bash
#This script checks if url argument is provided
if [ $# -eq 0]; then
    echo "please provide a URL as an argument"
    exit 1

fi

#Send a request to URL and store the response body in a variable
response_body=$(curl -s -L -w "%{size_download}" -o /dev/null $1)
#Display the size of the response body in bytes
echo "The size of the response body is $response_body bytes."
