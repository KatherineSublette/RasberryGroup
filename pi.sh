#!/bin/bash

echo "Content-type: text/html"
echo""

#capture a QUERY_STRING and convert to morse code on the website
echo "<html>"
echo "<title>"
echo "</title>"
echo "<body>"
regex="e=(.+)"
[[ $QUERY_STRING =~ $regex ]]
echo "<h2>${BASH_REMATCH[1]}</h2>"
echo "</body>"
echo "</html>"
