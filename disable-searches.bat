@echo off
SETLOCAL

SET FHIR_SERVER="http://localhost:8080"
SET FILE_PATH="..\mhv.phr\input\resources\disable-searches-min.json"


echo starting Disable-Searches
REM pause
REM Loop through each JSON file in the directory
echo Uploading %FILE_PATH% to %FHIR_SERVER%
curl -s -X POST "%FHIR_SERVER%/fhir" -H "Content-Type: application/fhir+json" -d @%FILE_PATH% --output temp.txt
IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo Error uploading error level %ERRORLEVEL%
    echo.
    pause
    EXIT /B 1
)
echo.

ENDLOCAL