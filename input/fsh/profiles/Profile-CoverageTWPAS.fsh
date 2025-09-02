Profile:        CoverageTWPAS
Parent:         Coverage
Id:             Coverage-twpas
Title:          "健保事前審查計畫-Coverage TWPAS"
Description:    "此健保事前審查計畫-Coverage TWPAS Profile說明本IG如何進一步定義FHIR的Coverage Resource以呈現癌藥事前審查之健保事前審查計畫"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Coverage-twpas"
* status = http://hl7.org/fhir/fm-status#active
* beneficiary only Reference(PatientTWPAS) 
* payor only Reference(TWCoreOrganizationGovt)