@echo off
SETLOCAL

SET FHIR_SERVER="http://localhost:8080"
SET FHIR_DIR="example"

echo starting Patient
REM pause
REM Loop through each JSON file in the directory
for %%f in ("%FHIR_DIR%\Patient*.json") do (
    echo Uploading %%~nf.json to %FHIR_SERVER%
    curl -s -X POST "%FHIR_SERVER%/fhir/Patient" -H "Content-Type: application/fhir+json" -d @%%f --output temp.txt
    IF %ERRORLEVEL% NEQ 0 (
        echo.
        echo Error uploading %%~nf.json error level %ERRORLEVEL%
        echo.
        pause
        EXIT /B 1
    )
    echo.
)

ENDLOCAL

