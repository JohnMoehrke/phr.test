@ECHO OFF
SETLOCAL

curl -X GET http://localhost:8080/fhir/$get-resource-counts


REM curl -X GET http://localhost:8080/fhir/Patient/$aggregate
REM curl -X GET http://localhost:8080/fhir/AllergyIntolerance/$aggregate
REM curl -X GET http://localhost:8080/fhir/Condition/$aggregate
REM curl -X GET http://localhost:8080/fhir/DiagnosticReport/$aggregate
REM curl -X GET http://localhost:8080/fhir/DocumentReference/$aggregate
REM curl -X GET http://localhost:8080/fhir/Immunization/$aggregate
REM curl -X GET http://localhost:8080/fhir/Observation/$aggregate
REM curl -X GET http://localhost:8080/fhir/SearchParameter/$aggregate
REM curl -X GET http://localhost:8080/fhir/StructureDefinition/$aggregate


ENDLOCAL