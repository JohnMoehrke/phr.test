
## Getting HAPI running

1. Install Docker Desktop
2. get hapi https://github.com/hapifhir/hapi-fhir-jpaserver-starter
Note must use -p on commandline. No clear way to do that in the docker desktop
- docker run -d -p 8080:8080 hapiproject/hapi:v6.10.0

to make configuration changes to hapi, 
1. use the hapi clone.
2. edit the application.yaml
3. build a docker image using your config
  > run docker-build
4. get the sha256 from docker-desktop images tab
5. start the docker image
  > docker run -d -p 8080:8080 sha256xxxxxxxx
6. look for new container running in docker-desktop containers tab
7. check the log for the right  version
8. make sure it is working on localhost
  > curl -X GET http://localhost:8080/fhir/metadata
9. make sure nothing is there with the test
  > python test.py
10.  load the set of patients
  > python loadpatients.py
11. Fill the db with many copies of clinical data on those patients
  > python loadall.py
12. disable searches
  > disable-searches.bat


https://rob-ferguson.me/getting-started-with-hapi-fhir/
https://fhirblog.com/2023/02/18/creating-your-own-fhir-server-revised/

I could not find a way to turning off reindexing with the operation, then turn back on after putting them in. Might be a way in smilecdr, but not clear it can turn off all reindexing.
- https://smilecdr.com/docs/fhir_repository/search_parameter_reindexing.html
- reindexSearchParameters = none


## tools

loadall.bat

Dataset: 15 patients, 389 clinical resources matching MHV-PHR profile(2Meg json).
 - push in 4 times the clinical resources for all of the 15 patients. --> 23400 resources (~150Meg json)

test.bat/test.py set to assure that the search we need still work, and that one we don't does indeed not work.

getcounts.bat gets counts in each resource we care about (current hapi has an operation)

## MHV configuration

application.yaml
```
    # muazzam -added
    allow_external_references: true
    allow_cascading_deletes: true
    enforce_referential_integrity_on_delete: true #otherwise delete wont work. only patient will be flagged
    delete_expunge_enabled: true
    expunge_enabled: true
    allow_multiple_delete: true
    allow_contains_searches: true
    default_page_size: 99999
    search.deleteStaleSearches: true
    search.deleteStaleSearches.after: 7d
    # muazzam -ended
```
- note that contains searches is default true, so this does not change from default
- actually changed
    - enforce_referential_integrity_on_delete changed to true
    - default_page_size: 99999
- no idea what the deleteStaleSearches are doing (besides what makes sense). No details can be found in internet documentation

FHIR Resource history is disabled in MHV.
- preserve_resource_history=false
- setResourceDbHistoryEnabled(false)
- application.yaml FEATURE Muazzam [added](https://github.com/hapifhir/hapi-fhir-jpaserver-starter/pull/681) to hapi, released in 7.2.0
- today: Set in mhv_np_fhir_api/../FhirServerConfigCommon.java

## Current HAPI features

Note, 7.4.0 HAPI has [Enabling Index Storage Optimization](https://hapifhir.io/hapi-fhir/docs/server_jpa/performance.html#enabling-index-storage-optimization)


## Testing

hapi current
- (sad_napier - latest hapi with container search turned off)
- turn off contained searches -- 1.32GB / 15.57GB, Disk 13.32
- only needed resources -- 1.16GB / 15.57GB, Disk 16.18
- Loaded with CMD phr.test with all resources allowed -- 1.57GB / 15.57GB, Disk 3.53, hsperdata_nonroot/1 32kB, container 994.51 MB


hapi 6.10.0 -- default config - container 1 GB - before starting
(focused_kowal) -- 1.48GB / 15.57GB, Disk 4.47GB, RAM 3.35GB
 - default configuration
 - add 400 resources -- 1.48GB / 15.57GB, Disk 4.47GB, RAM 3.40GB
 - add for 10 patients 383*6 resources (17k resources) -- 1.85GB / 15.57GB, Disk 10.76GB, RAM 2.77
 - added the search parameter -- memory used jumped from 2->5.5G, CPU 100% for 30 minutes
 - log does not include any error or failure messages (as was reported by Muazzam. Presume that is a db specific thing)
 - memory use does not get smaller, stays up at 6GB that it jumped to when adding the SearchParameter bundle
 - confirmed that the search parameters we left enabled do still work, and those we removed now throw an error.
 
optimistic_sammet is hapi 6.10 with MHV configuration
- build ? xljgkkndv9au4rd7xx6qd6cyh
 - Mem 1.54GB, RAM 3.70GB
 - add resources (15 patients, 5*data = 29k resources) - 3.01GB, RAM 6.21GB
 - add search parameter disabling bundle - 4.84GB, RAM 8.44GB
 - took an hour to reindex using a Batch bundle
dazzling_wu
 * Took an hour to reindex using a Transaction bundle

heuristic_poincare
- Reduced the SearchParameter turning off to 40 (from 95). don't turn off those that we never populate.
- 38 minutes to reindex -- so the extra disabled search should be avoided.

-------- noted the large bundle was not large enough (should be 128 entries)
-------- noted even the large bundle was not turning things off

condescending_killby
- try bigger bundle that also disables resource elements. (63 - really the min we need)
- 64 minutes

zen_merkle
- image sha256:450b779bd3f5dee2b879cb3033b14ab6a6eac1de15de5cb271554fd1c47c5504
- try full bigger bundle (128)
- 56 minutes to calm down
- test good
- negative test good

jovial_hoover -- 6.10 with MHV settings, and ONLY the Resources we need.
- build w4gwliv7e3vkxzxwv1f82wscy
- image sha256:02144297ce8ae734e94e46ea13c0942d9906f392bafba8c93d389fe646be188f
- Note that in addition to what we asked for we got: CodeSystem, ValueSet, OperationOutcome, OperationDefinition
- startup size 1.12GB, RAM 5.94
- 36 minutes to calm down (Given the same as above, except less resource types supported)
- post calm 4.26GB, RAM 5.93GB
- NOTE: capabilitystatement still shows the retired search parameters (with less complete documentation as we remove that)
- test good
- negative test good

angry_ardinghel - 6.10 no changes (contained searches is on by default)
- startup size 1.85GB, 3.2GB
- full size 2.11GB, 3.18GB
- 50 minutes to settle
- size 4.24GB, 6.06GB
- wait one hour, 3.43GB, 4.56GB
- add more big Data -- 3.49, 4.58

adoring_cray - latest (7.6.0) no changes (contained searches is on by default)
- startup size 1.48GB, 4.09GB
- full 1.48GB, 4.53 (py script 141.30)
- 15 minutes to settle
- size 4.53, 7.08

latest (7.6.0) set no history, set no contained searches, only resources we need (? string indexing off, text search)
brave_william
- full 1.82GB, 3.04GB (py script 116.56)
- no CPU spike

what of the recommended settings allows for no spike?-
- remove the limit to a few resource types, and the spike happens.

try 6.10 default
- full in (py script 258.28)
- calm down in 35 minutes

6.10 with recommendations
- full in (py script 248.15)
- calm down in 35 minutes

latest configured (7.6.0)
- 10x data
- 1.32GB data network / 207MB
- 4.65GB, 5.66 (disk 23.25GB)
- CPU spike happens ~15 minutes later
- during the first 15 minutes there is about 25% CPU usage
- CPU spike 2 hours
- memory 4.7, 5.74, 23.27

reenable?
- using recommended new version
- confirm a search on Patient address city works
- disable patient address city with searchParameter
- confirm the error is returned that the parameter is not understood
  - confirm that CapabilityStatement does not include that parameter
- enable the search parameter
- confirm that results are returned 
  - Note that CapabilityStatement does add that parameter back in
  - but search does not return results -- returns zero
  - waited for reindexing --> Still no results
  - forced a reindex --> still no results
  - delete the searchParameter --> Still no results
  - wait --> Still no results
- https://groups.google.com/g/hapi-fhir/c/pyCs9RkQ2vY 
- Note does work with hapi 8.0.0

is there any evidence in the release notes of this improvement?

HAPI 8.0.0 default 
- 3/3/2025
- load 153.70 seconds
- mem 2.13GB, 8.18 ram, 22.38 GB used
- disable -> 4.45GB, 5.35 ram, 22.38 disk

HAPI 8.0.0 configured (but not limited resources) 
- 3/4/2025
- load 149.73 seconds
- 1.36GB, ram 6.22, disk 22.19
- disable searches, no spike right away. A 5 second spike a few minutes later
- 4.52GB, ram 5.39, disk 22.19
- test success
- load more, 109.61
- 4.55GB, ram 5.44, 22.19
- no use, just a few hours idle.... 4.59GB, ram 5.44, disk 22.19
- tested re-enabling of a search parameter with success.

HAPI 8.0.0 configured and limited resource types enabled
- Note that HAPI 8.0.0 requires Task also be enabled, else it fails -- noted https://groups.google.com/g/hapi-fhir/c/QnsPhJgSnxg
- HAPI 8, forces enabled of CodeSystem, OperationDefinition, Subscription, and ValueSet
- 3/4/2025
- start 1.11GB, 6.62 ram, 22.50 disk
- load 130.75
- 1.45GB, ram 2.48, disk 22.50
- disable search
- 1.58GB, ram 2.76, disk 22.52
- test good
- load more 179.12
- 4.72gb, 5.66 ram, 22.53 disk
- next day - 4.76, 5.77, 

- start 1.05, 1.79, 23.62
- load patients 1.05, 1.79, 23.62
- disable searches 1.25, 2.04, 23.62
- load data 122.36 seconds:  1.64, 2.45, 23.62
- test good
- 8 hours later 1.67, 2.41, 23.62
- load much more data. 4.77, 5.55, 23.63
- next day and no change in memory use
- test timeout on DiagnosticReport test (should have been 5000+ results)

- lower default bundle size to 4000 as the above 5000+ crashed the hapi
- load, disable, 1.82, 6.67, 24.36
- +4 load, test good
- +5 load, test fail (10 second timeout on diagnosticReport)
- test again (10 second timeout on Observations)
- test again good
- note that Observation hit the 4000 max with more pages available, 15Meg
  - documentReference,  2370, 19Meg
  - diagnosticReport, 2670, 9Meg
- Mem 4.77, 9.58, 24.37
- +5 load, test fail (10 second timeout on diagnosticReport)
- increase test timeout to 15
- test good
  - Observation, 4000, 15Meg
  - DiagnosticReport, 4000, 13Meg
  - DocumentReference, 3555, 29Meg
- lesson learned, by setting limit to 4000 this prevented the crash we had at 99999.
- +5 load, test failure, crash (diagnosticReport, 2160, 18Meg)
- lesson learned, might need to set limit to 2000 to prevent crash

Test hapi 6.10 to see if it crashes at 20 loads.
- 3/6/2025 11:30
- using default 6.10 (not customized) (thus the page size is default - 20)
- load patients, disable, 1.71, 3.58, 25.22
- +4 load, test good
- +5 load, test good
- +5 load, test good
- +5 load, test good
- test went relatively fast. clearly limit to 20 is speed benefit

Test hapi 6.10 to see if it crashes at 20 loads.
- 3/6/2025 1:00
- using default 6.10 (customized) (page size is 99999)
- load patients, disable, 1.15, 7.66, 25.13
- +4 load, test good
- +5 load, test good (obs 4158/15M, dr 972/8M, doc 2133/17M)
- +5 load, test good (obs 6468/25M, dr 1512/12M, doc 3318/27M)
- +5 load, test crash (diagnosticReport, 2052) - peg cpu 100%

test hapi 8.0.0 with 2000 limit
- 3/6/2025 2:30
- patients and 5 load, test good
- +5 load, test good (obs 2000p/7M, dr 1080/9M, doc 2000p/16M)
- +5 load, test ...
- +5 load, test ...



### re-enable a disabled search

HAPI 6 and 7 does not seem to fully allow reenabling of a disabled search parameter. The reenabled parameter does get added back to the CapabilityStatement, and does not throw errors if used; but it does not function as a search parameter.

HAPI 8.0.0 worked as expected. There was a delay after reenabling a parameter, but after a minute, the search did work and found values. (Initially search with the reenabled parameter didn't fail, but gave zero results)

## Conclusions

I never got a failure when disabling search parameters. It did take a very long time. (Current HAPI is 25% of 6.10). Therefore the failure must be in MHV external db configuration, or the db itself.

6.10 does take far more CPU to create Patient resources. Much slower on data bundles, more CPU overhead.

7 is much faster than 6. It was not uncommon for 6 to take a few seconds to respond to the first request, and then be fast. 7 didn't seem to do that, was fast always. This might be related to our problem with first login creating Patient.

HAPI does update the CapabilityStatement removing those parameters (and Resources) that are marked as retired, MOSTLY. It seems that there are some parameters that one can't disable. Have issued a bug report https://github.com/hapifhir/hapi-fhir/issues/6696


hapi email did note that setMarkResourcesForReindexingUponSearchParameterChange() can be used to turn off reindexing on each SearchParameter. This seems to have been released in HAPI 7.2.2 or later. So not helpful to 6.10.

### Recommendation

switch to latest HAPI. (8.0.0)
- don't convert any data. The negative of converting is not justified by having the data converted, AS we will replace that data anyway. Thus we can start with an empty db.
- might want to keep Patients table, but unclear that this is useful (7 doesn't have pause on first request that 6 has)
- use configuration to turn off history
- use configuration to limit resources to those we need ?
- Likely should turn off Lucene indexing as we don't need text searching at all.
- do not need contained searches
- turn off string indexing: add to mhv_np_fhir_api/../FhirServerConfigCommon.java setSuppressStringIndexingInTokens(true)
  - ModelConfig#setSuppressStringIndexingInTokens https://hapifhir.io/hapi-fhir/docs/server_jpa/performance.html#disabling-text-indexing
  - could, but I won't as it seems risky: in a SearchParameter that we do not disable, we can add the extension http://hapifhir.io/fhir/StructureDefinition/searchparameter-token-suppress-text-index

#### recommended application.yaml settings

```yaml
    supported_resource_types:
      # hapi needs
      - Bundle
      - Basic
      - CapabilityStatement
      - CodeSystem
      - ValueSet
      - SearchParameter
      - Task
      # vista needs
      - Patient
      - Observation
      - AllergyIntolerance
      - Condition
      - DiagnosticReport
      - DocumentReference
      - Immunization
      # OH additional needs
      - Account
      - Appointment
      - Binary
      - CarePlan
      - CareTeam
      - ChargeItem
      - Communication
      - Consent
      - Coverage
      - Device
      - Encounter
      - FamilyMemberHistory
      - Basic
      - Goal
      - InsurancePlan
      - location
      - MedicationAdministration
      - MedicationDispense
      - MedicationRequest
      - NutritionOrder
      - Organization
      - Person
      - Practitioner
      - Provenance
      - Questionnaire
      - RelatedPerson
      - Schedule
      - ServiceRequest
      - Slot
    allow_contains_searches: false
    default_page_size: 1500
    max_page_size: 1500
    delete_expunge_enabled: true
    enable_index_missing_fields: false
    enable_index_of_type: false
    enable_index_contained_resource: false
    resource_dbhistory_enabled: false
```

## TODO

- find release note  that might justify why 7 doesn't take a long time to respond to first request.
