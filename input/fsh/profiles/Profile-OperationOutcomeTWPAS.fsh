Profile:        OperationOutcomeTWPAS
Parent:         OperationOutcome
Id:             Operationoutcome-twpas
Title:          "系統回應訊息-OperationOutcome TWPAS"
Description:    "此系統回應訊-OperationOutcome TWPAS Profile說明本IG如何進一步定義FHIR的OperationOutcome Resource以呈現系統回應訊息之內容"
* meta 1..1
* meta.profile 1..1
* meta.profile = $sd/Operationoutcome-twpas
* issue ..1 MS
* issue.severity from http://hl7.org/fhir/ValueSet/issue-severity|4.0.1 (required)
* issue.severity ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* issue.severity ^binding.extension.valueString = "IssueSeverity"
* issue.severity ^binding.description = "應填入[IssueSeverity](http://hl7.org/fhir/R4/valueset-issue-severity.html)值集中的其中一個代碼。"
* issue.code from http://hl7.org/fhir/ValueSet/issue-type|4.0.1 (required)
* issue.code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* issue.code ^binding.extension.valueString = "IssueType"
* issue.code ^binding.description = "應填入[IssueType](http://hl7.org/fhir/R4/valueset-issue-type.html)值集中的其中一個代碼。"
* issue.details 1.. MS