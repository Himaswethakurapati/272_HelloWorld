#!/bin/bash

HELLO_URL="http://127.0.0.1:56525/hello"  
WORLD_URL="http://127.0.0.1:56553/world"

# Make the API call using curl
hello_response=$(curl -s "$HELLO_URL")
world_response=$(curl -s "$WORLD_URL")

# Print the response
echo "$hello_response $world_response"
