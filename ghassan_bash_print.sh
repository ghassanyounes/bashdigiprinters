#!/bin/bash
ARGC=$#
echo $ARGC
echo Welcome to Ghassan\'s Linux DigiPen Printer Utility
echo Usage: $0 [filename] [printercode] [username]
echo If environment variable PRINTUSER is set, this username will be used.
if [ "$ARGC" -gt "3" ]; then
    echo "Too many parameters!"
    exit 1
fi

if [ "$ARGC" -lt "3" ]; then
    if [ x"$PRINTUSER" == x"" ]; then
        echo Enter DigiPen username:
        read dpuser
    else
        dpuser=$PRINTUSER
    fi
else
    dpuser=$3
fi

if [ "$ARGC" -lt "2" ]; then        
    echo Enter Printer Code and Name - e.g. 2050Edison: 
    read printer
else
    printer=$2
fi

if [ "$ARGC" -lt "1" ]; then
    echo Enter Path to File - e.g. Documents/homework.pdf: 
    read filename
else
    filename=$1
fi

echo smbclient -U $dpuser //print0.digipen.edu/$printer -c "print $filename"
