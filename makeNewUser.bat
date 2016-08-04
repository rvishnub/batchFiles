@ECHO OFF

SET /P _FIRST=Would you like to create a new User?  Please enter a Username:  

IF "%_FIRST%"==help GOTO help

IF "%_FIRST%"=="" GOTO help

SET /P _SECOND=Please enter a password:  

IF "%_SECOND%"=="" GOTO help2

net User %_FIRST% %_SECOND% /add

PAUSE
GOTO eof

:help
ECHO You must enter a Username in order to create a new User.  Example:  GenericUser.  Start again.
PAUSE
GOTO eof

:help2
ECHO You must enter a password in order to create a new User.  Example:  123456789.  Start again.
PAUSE
GOTO eof