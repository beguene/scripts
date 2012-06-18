#!/bin/sh
if test -z "$1"
then
  echo "No command-line arguments."
    FILE=links.txt;
else
  echo "First command-line argument is $1."
    FILE=$1;
fi
cd ~/Downloads;
for i in $( cat $FILE ); do
    curl -O -f -C - --connect-timeout 10 "$i" && sed -i -e "1d" "$FILE";
done
