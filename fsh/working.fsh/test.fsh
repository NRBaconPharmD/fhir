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
