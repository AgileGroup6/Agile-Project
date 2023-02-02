#!/bin/sh

DIR=$(dirname $0)

cd "$DIR"
echo "CHECK $(date)" >> "$DIR/cronhistory"

if [ $(git pull | wc -l) -gt 1 ]; then
	echo "BUILD $(date)" >> "$DIR/cronhistory"
	./deploy.sh
	echo "DONE  $(date)" >> "$DIR/cronhistory"
fi

