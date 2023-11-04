// CodeSystems
Alias: $AccountStatus = http://hl7.org/fhir/account-status
Alias: $loinc = http://loinc.org
Alias: $testcs = http://fake.org

CodeSystem: FakeCS
Id: fake-cs
Title: "Fake CodeSystem"
Description: "Fake code"
* #examplecode1
    "Test1"
    "description for test"
* #examplecode2
    "Test2"
    "description for test2"

Instance: observation1
InstanceOf: Observation
Usage: #example
* status = #final
* code = $loinc#9482-1

ValueSet: AntiMrsaAgents
Id: anti-mrsa-agents
Title: "Anti MRSA Agents"
Description: "testing"
* $AccountStatus#active "Active"
* $AccountStatus#on-hold "On Hold"
* include codes from system FakeCS

Profile: CovidDiagnosis
Parent: Condition
Description: "How to report COVID"
* code = $icd#U07.1
* severity from CovidSeverityVS (required)
* subject only Reference(Patient)
* subject 1..1
 
Alias: $icd = http://hl7.org/fhir/sid/icd-10-cm

ValueSet: CovidSeverityVS
Description: "Values"
* include codes from valueset http://hl7.org/fhir/ValueSet/condition-severity
* include $sct#442452003 "life threat"

Alias: $sct = http://snomed.info/sct
