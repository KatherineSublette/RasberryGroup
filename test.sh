#!/bin/bash


echo "Content-type: text/html"
echo ""
echo "<p><html><head><title>CMPT251</title></head><body>"
len=${#QUERY_STRING}
count=2
##lc(){
##	case "$1" in
##		[A-Z])
##		n=$(printf "%d" "'$1")
##		n=$((n+32))
##		printf \\$(print "%o" "$n")
##		;;
##	*)
##		printf "%s" "$1"
##		;;
##	esac
##}
word="${QUERY_STRING}"
declare -l word
word=$word
echo "$word"

while [ $count -lt $len  ]; do
	case "${word:$count:1}" in
		"%")
			count=$[$count+2]
			;;
		"a")
			echo ".-"
			;;
		"b")
			echo "-..."
			;;
		"c")
			echo "-.-."
			;;
		"d")
			echo "-.."
			;;
		"e")
			echo "."
			;;
		"f")
			echo "..-."
			;;
		"g")
			echo "--."
			;;
		"h")
			echo "...."
			;;
		"i")
			echo ".."
			;;
		"j")
			echo ".---"
			;;
		"k")
			echo "-.-"
			;;
		"l")
			echo ".-.."
			;;
		"m")
			echo "--"
			;;
		"n")
			echo "-."
			;;
		"o")
			echo "---"
			;;
		"p")
			echo ".--."
			;;
		"q")
			echo "--.-"
			;;
		"r")
			echo ".-."
			;;
		"s")
			echo "..."
			;;
		"t")
			echo "-"
			;;
		"u")
			echo "..-"
			;;
		"v")
			echo "...-"
			;;
		"w")
			echo ".--"
			;;
		"x")
			echo "-..-"
			;;
		"y")
			echo "-.--"
			;;
		"z")
			echo "--.."
			;;
		"1")
			echo ".----"
			;;
		"2")
			echo "..---"
			;;
		"3")
			echo "...--"
			;;
		"4")
			echo "....-"
			;;
		"5")
			echo "....."
			;;
		"6")
			echo "-...."
			;;
		"7")
			echo "--..."
			;;
		"8")
			echo "---.."
			;;
		"9")
			echo "----."
			;;
		"0")
			echo "-----"
			;;
		esac
	count=$[$count+1]
	done
echo "<p></body></html>"
