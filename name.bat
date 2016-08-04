@ECHO OFF
SET /P uname=Please enter your name: 
IF "%uname%"=="" GOTO Error
ECHO Hello %uname%, Welcome to DOS inputs!
PAUSE
GOTO:eof
:Error
ECHO You did not enter your name! Bye bye!!
PAUSE
