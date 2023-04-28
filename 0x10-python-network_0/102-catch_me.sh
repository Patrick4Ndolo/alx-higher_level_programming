#!/bin/bash

# Send a POST request to 0.0.0.0:5000/catch_me with a custom header that causes the server to respond with "You got me!" in the body of the response
curl -s -X POST -H "Referer: 0.0.0.0:5000/catch_me" http://0.0.0.0:5000/catch_me
