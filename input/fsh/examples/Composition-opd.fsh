Instance: opd
InstanceOf: CompositionOpdTWPAS
Title: "門診病歷-Composition"
Description: "依據門診病歷-Composition OPD TWPAS Profile呈現門診病歷"
Usage: #example
* status = http://hl7.org/fhir/composition-status#final
* subject.reference = "Patient/pat-min"
* date = "2024-05-30"
* encounter.reference = "Encounter/enc-opd"
* author.reference = "Organization/org-hosp-example"
* title = "門診病歷"
* type = http://loinc.org#34108-1
* section[subjective].entry.reference = "Observation/obs-subjective"
* section[subjective].code.coding.code = #10154-3
* section[subjective].code.coding.system = "http://loinc.org"

* section[objective].entry.reference = "Observation/obs-objective"
* section[objective].code.coding.code = #61149-1
* section[objective].code.coding.system = "http://loinc.org"

* section[assessment].entry.reference = "ClinicalImpression/cliImp-min"
* section[assessment].code.coding.code = #51848-0
* section[assessment].code.coding.system = "http://loinc.org"

* section[plan].entry.reference = "CarePlan/careplan-min"
* section[plan].code.coding.code = #18776-5
* section[plan].code.coding.system = "http://loinc.org"