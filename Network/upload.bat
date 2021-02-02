@ECHO OFF

IF "%1"=="" GOTO ERROR_FILE

ECHO Uploading arquive %1 with curl
curl --upload-file "%1" https://transfer.sh/"%1"
@ECHO ON
ECHO Uploaded..
@ECHO OFF
PAUSE
EXIT


:ERROR_FILE
ECHO File must be specified