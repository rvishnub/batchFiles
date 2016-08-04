@ECHO OFF

SET /P _FIRST=Would you like to combine two text files from the same directory?  Please enter a the name of the first text file:  

IF "%_FIRST%"==help GOTO help

IF "%_FIRST%"=="" GOTO help

SET /P _SECOND=Please enter the name of the second file -- including the path:  
IF "%_SECOND%"==help GOTO help
IF "%_SECOND%"=="" GOTO help

SET /P _NEW=Please enter the name of the NEW file:  
IF "%_NEW%"==help GOTO help
IF "%_NEW%"=="" GOTO help

touch "%_NEW%".txt

cat _FIRST >> _NEW
cat _SECOND >> _NEW

ECHO Here is your new file!

PAUSE
notepad _NEW
GOTO eof

:help
ECHO You must enter the name of a text file.  Example:  apples.txt.  Start again.
PAUSE
GOTO eof
