@ECHO OFF

IF "%1"=="" GOTO ERROR_FILE

ECHO Uploading arquive %1 with curl
curl --upload-file "%1" https://transfer.sh/"%1"
GOTO FINISH

:ERROR_FILE
ECHO File must be specified

:FINISH
@ECHO ON
ECHO Uploaded..
@ECHO OFF