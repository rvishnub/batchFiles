@ECHO OFF
:start
ECHO This program will combine two text files from the same directory.

ECHO The text files must be in the same directory as this program.
  
SET /P _FIRST=Please enter the name of the first file: 

IF "%_FIRST%"==help GOTO help
IF "%_FIRST%"=="" GOTO help

SET /P _SECOND=Please enter the name of the second file:  
IF "%_SECOND%"==help GOTO help
IF "%_SECOND%"=="" GOTO help

SET /P _NEW=Please enter the name of the new file:  
IF "%_NEW%"==help GOTO help
IF "%_NEW%"=="" GOTO help

@ECHO OFF

type %_FIRST% >> %_NEW%.TXT
echo. >> %_NEW%.TXT
type %_SECOND% >> %_NEW%.TXT

ECHO Here is your new file!

PAUSE
notepad %_NEW%.TXT
GOTO eof

:help
ECHO You must enter the name of a text file.  Example:  apples.txt.  Start again.
PAUSE
GOTO start
