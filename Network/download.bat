@ECHO OFF

IF "%1"=="" GOTO ERROR_LINK

IF "%2"=="" GOTO ERROR_FILE_NAME

ECHO Download arquive %2 with curl. URL: %1
curl %1 -o %2
@ECHO ON
ECHO Downloaded..
@ECHO OFF
PAUSE
EXIT

:ERROR_LINK
ECHO Link must be specified

:ERROR_FILE_NAME
ECHO File name must be specified