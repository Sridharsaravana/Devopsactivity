#!/bin/bash


#send a request to guvi.in and get the HTTP status code

http_code=$(curl -s -o /dev/null -w "%{http_code}" https://guvi.in)

#check if the HTTP code is 200 or 300, which indicates success


if[[ "$http_code" =~ ^[2-3][0-9][0-9]$ ]]; then
echo "Request to guvi.in succeeded with HTTP status code $http_code"
	else
echo"Request to guvi.in failed with HTTP status code $http_code"
fi
