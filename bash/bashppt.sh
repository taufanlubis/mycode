#!/bin/bash

usage() {
	echo "Interactively show slides from a file"
	echo
	echo "Usage:"
	echo "$0 FILE LINES"
	echo
	echo "FILE is the file containing the slides."
	echo "In the file, each slide is indicated with a simple 'slide' by itself"
	echo "at the start of a line."
	echo "LINES is the desired height; \$LINES is generally what you want to"
	echo "provide here."
	echo
	echo "Control:"
	echo "Pressing k or h will move backwards one slide."
	echo "Pressing anything else will move ahead one slide."
	}
	
	if [ $# -lt 2 ]; then
	usage
	exit 1
	fi
	
	UNPARSED="$(cat $1)"
	REMOVE_LINES=$(echo "$UNPARSED" | sed '/^slide$/q' | wc -l)
	if [ "$REMOVE_LINES" -eq 0 ]; then
	echo "All slides including the first slide must start with 'slide' on a line by itself."
	fi
	UNPARSED="$(echo "$UNPARSED" | sed -n $((1 + $REMOVE_LINES)),\$p)"
	
	I=0
	while [ -n "$UNPARSED" ]; do
	I=$((I + 1))
	SLIDE[$I]="$(echo "$UNPARSED" | sed '/^slide$/q' | sed \$d; echo x)"
	# bash gotcha: command expansion removes trailing newlines
	# we need them here for counting purposes
	# so throw an "x" on the end and take it off after expansion's done
	SLIDE[$I]="${SLIDE[$I]%x}"
	REMOVE_LINES=$(echo "${SLIDE[$I]}" | wc -l)
	UNPARSED="$(echo "$UNPARSED" | sed 1,$(($REMOVE_LINES))d)"
	done
	
	echo "Loaded ${#SLIDE[@]} slides"
	
	SLIDE_IX=0
	while read -s -N 1; do
	case "$REPLY" in
	[hk])
	GO=-1
	;;
	*)
	GO=1
	;;
	esac
	SLIDE_IX="$(($SLIDE_IX + $GO))"
	if [ "$SLIDE_IX" -gt "${#SLIDE[@]}" ]; then
	SLIDE_IX="${#SLIDE[@]}"
	elif [ "$SLIDE_IX" -lt 1 ]; then
	SLIDE_IX=1
	fi
	echo
	echo -n "${SLIDE[$SLIDE_IX]}"
	SLIDE_HEIGHT="$(echo "${SLIDE[$SLIDE_IX]}" | wc -l)"
	I="$SLIDE_HEIGHT"
	while [ "$I" -lt $2 ]; do
	echo
	I="$(($I + 1))"
	done
	done
