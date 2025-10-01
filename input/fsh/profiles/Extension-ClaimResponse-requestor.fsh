Extension: ClaimResponseRequestor
Id: extension-claimResponse-requestor
Description: "審查委員身分證號"
Context: ClaimResponse
* . ^short = "審查委員身分證號"
* value[x] ^short = "審查委員身分證號"
* value[x] only Identifier
* valueIdentifier.use = #official
* valueIdentifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#NNxxx
* valueIdentifier.system = "http://www.moi.gov.tw"
* valueIdentifier.value 1..1
* valueIdentifier.value ^short = "審查委員身分證號"
* valueIdentifier.system ^short = "身分證號的命名空間（namespace），請固定填「http://www.moi.gov.tw」。"
* valueIdentifier obeys id-card-number