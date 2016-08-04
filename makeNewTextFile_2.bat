@ECHO OFF
ECHO This program will combine two text files from the same directory.

SET /P _FIRST=Please enter the name of the first text file:  

IF "%_FIRST%"==help GOTO help

IF "%_FIRST%"=="" GOTO help

SET /P _SECOND=Please enter the name of the second file:  
IF "%_SECOND%"==help GOTO help
IF "%_SECOND%"=="" GOTO help

SET /P _NEW=Please enter the name of the NEW file (without the .txt):



IF "%_NEW%"==help GOTO help
IF "%_NEW%"=="" GOTO help

break>""_NEW".txt"

copy _FIRST + _SECOND >> _NEW


ECHO Here is your new file!

PAUSE
notepad _NEW
GOTO eof

:help
ECHO You must enter the name of a text file.  Example:  apples.txt.  Start again.
PAUSE
GOTO eof
