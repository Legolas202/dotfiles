#!/bin/zsh

FILE="themes.txt"

cat $FILE | while read line; do
	prompt -p $line
done
