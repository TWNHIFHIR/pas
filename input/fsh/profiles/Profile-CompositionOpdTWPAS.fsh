Profile:        CompositionOpdTWPAS
Parent:         https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Composition-twcore
Id:             Composition-opd-twpas
Title:          "門診病歷-Composition OPD TWPAS"
Description:    "此門診病歷-Composition OPD TWPAS Profile說明本IG如何進一步定義臺灣核心-臨床文件架構（TW Core Composition） Profile以呈現免疫製劑事前審查"
* ^version = "1.1.2"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Composition-opd-twpas"
* status = http://hl7.org/fhir/composition-status#final
* subject 1..1
* subject only Reference(PatientTWPAS)
* encounter 1..1
* encounter only Reference(EncounterOpdTWPAS)
* author only Reference(PractitionerTWPAS or OrganizationTWPAS) 
* section 
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #closed
* section contains
    subjective 1..1 MS and
    objective 1..1 MS and
    assessment 1..1 MS and
    plan 1..1 MS
* type = http://loinc.org#34108-1

* section[subjective].code 1..
* section[subjective].code.coding 1..1
* section[subjective].code.coding.code 1..1
* section[subjective].code.coding.system 1..1
* section[subjective].entry 1..1
* section[subjective].entry only Reference(ObservationSubjectiveTWPAS)
* section[subjective].code.coding.code = #10154-3
* section[subjective].code.coding.system = "http://loinc.org"
* section[objective].code 1..
* section[objective].code.coding 1..1
* section[objective].code.coding.code 1..1
* section[objective].code.coding.system 1..1
* section[objective].entry 1..1
* section[objective].entry only Reference(ObservationObjectiveTWPAS)
* section[objective].code.coding.code = #61149-1
* section[objective].code.coding.system = "http://loinc.org"
* section[assessment].code 1..
* section[assessment].code.coding 1..1
* section[assessment].code.coding.code 1..1
* section[assessment].code.coding.system 1..1
* section[assessment].entry 1..1
* section[assessment].entry only Reference(ClinicalImpressionTWPAS)
* section[assessment].code.coding.code = #51848-0
* section[assessment].code.coding.system = "http://loinc.org"
* section[plan].code 1..
* section[plan].code.coding 1..1
* section[plan].code.coding.code 1..1
* section[plan].code.coding.system 1..1
* section[plan].entry 1..1
* section[plan].entry only Reference(CarePlanTWPAS)
* section[plan].code.coding.code = #18776-5
* section[plan].code.coding.system = "http://loinc.org"