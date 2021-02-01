@ECHO OFF

IF "%1"=="" GOTO ERROR_SOURCE

IF "%2"=="" GOTO ERROR_DESTINATION

ECHO Moving "%1" to "%2"...
MOVE /-Y "%1" "%2"
PAUSE

:ERROR_SOURCE
ECHO Source must be specified

:ERROR_DESTINATION
ECHO Destination must be specified