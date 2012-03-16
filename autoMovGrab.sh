#!/bin/sh
if test -z "$1"
then
  echo "No command-line arguments.";
    FILE=links.txt;
else
  echo "First command-line argument is $1.";
    FILE=$1;
fi
cd $HOME/vids;
for i in $( cat $FILE ); do
    movgrab "$i";
    RETVAL=$?
    if test $RETVAL -eq 176
    then
        echo "movgrab success";
        sed -i -e "1d" "$FILE";
    fi
done
