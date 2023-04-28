#!/bin/bash
#Accepts in URL as an argument, sends a GET request to the ULR, and displaysthe body response
curl -sH "X-School-User-Id: 98" "$1"
