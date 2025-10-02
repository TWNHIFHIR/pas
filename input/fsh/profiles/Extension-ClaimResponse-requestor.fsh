Extension: ClaimResponseRequestor
Id: extension-claimResponse-requestor
Description: "審查委員身分證號"
Context: ClaimResponse
* . ^short = "審查委員身分證號"
* value[x] ^short = "審查委員身分證號"
* value[x] only Identifier
* valueIdentifier 1..
* valueIdentifier.use = #official
* valueIdentifier.system 1..1
* valueIdentifier.type.coding 1..1
* valueIdentifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#NNxxx
* valueIdentifier.system = "http://www.moi.gov.tw"
* valueIdentifier.value 1..1
* valueIdentifier.value ^short = "審查委員身分證號"
* valueIdentifier.system ^short = "身分證號的命名空間（namespace），請固定填「http://www.moi.gov.tw」。"
* valueIdentifier obeys id-card-number

Invariant: id-card-number
Description: "身分證號共十碼，首碼以英文字母代表直轄市、縣（市）別，第二碼至第十碼為數字碼。"
Expression: "value.matches('^[A-Za-z][0-9]{9}$')"
Severity: #error