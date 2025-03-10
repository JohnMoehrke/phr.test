
@echo on
SETLOCAL

SET FHIR_SERVER="http://localhost:8080"

echo starting Patient
REM pause
    curl -X GET "%FHIR_SERVER%/fhir/Patient?identifier=666114838" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )

echo starting AllergyIntolerance
REM pause
    curl -X GET "%FHIR_SERVER%/fhir/AllergyIntolerance?patient=Patient/1&clinical-status=active&verification-status:not=entered-in-error" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )
    curl -X GET "%FHIR_SERVER%/fhir/AllergyIntolerance?patient=Patient/1&_elements=identifier" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )

echo starting Condition
REM pause
    curl -X GET "%FHIR_SERVER%/fhir/Condition?patient=Patient/2&clinical-status=active" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )
    curl -X GET "%FHIR_SERVER%/fhir/Condition?patient=Patient/2&_elements=identifier" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )

echo starting DiagnosticReport
REM pause
    curl -X GET "%FHIR_SERVER%/fhir/DiagnosticReport?patient=Patient/3&status:not=entered-in-error&category=http://loinc.org|LP29684-5" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )
    curl -X GET "%FHIR_SERVER%/fhir/DiagnosticReport?patient=Patient/3&_elements=identifier&category=http://loinc.org|LP29684-5" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )

echo starting DocumentReference
REM pause
    curl -X GET "%FHIR_SERVER%/fhir/DocumentReference?patient=Patient/4&status:not=entered-in-error&category=http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category|clinical-note" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )
    curl -X GET "%FHIR_SERVER%/fhir/DocumentReference?patient=Patient/4&_elements=identifier" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )

echo starting Immunization
REM pause
    curl -X GET "%FHIR_SERVER%/fhir/Immunization?patient=Patient/5&status:not=entered-in-error" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )
    curl -X GET "%FHIR_SERVER%/fhir/Immunization?patient=Patient/5&_elements=identifier" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )

echo starting Observation
REM pause
    curl -X GET "%FHIR_SERVER%/fhir/Observation?patient=Patient/6&category=http://terminology.hl7.org/CodeSystem/observation-category|vital-signs&status:not=entered-in-error" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )
    curl -X GET "%FHIR_SERVER%/fhir/Observation?patient=Patient/6&_elements=identifier" -H "Content-Type: application/fhir+json" > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )

echo starting Update Bundle
REM pause
    curl -X POST http://localhost:8080/fhir -H "Content-Type: application/fhir+json" -d @Bundle-ex-updateBundle.json > temp.txt
    if %ERRORLEVEL% neq 0 (
        echo error
        exit /b 1
    )

echo "Success"

ENDLOCAL

