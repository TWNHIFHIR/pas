ValueSet: NHIMedicationFDA
Id: nhi-medication-fda
Title: "NHI-健保事前審查-臺灣食藥署藥品及醫療器材代碼值集"
Description: "NHI-健保事前審查-臺灣食藥署藥品及醫療器材代碼值集。  
此值集所涵蓋代碼量較大會使載入頁面時間較長，完整代碼可至[全國專門術語服務平臺－值集(Value Set)](https://fhir.mohw.gov.tw/ts/valueset.jsp)查閱。"
* ^date = "2026-10-01"
* ^version = "2026-10-01"
* ^experimental = false
* include codes from system https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medication-fda-tw
* include codes from system https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medication-device-fda-tw
* exclude https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medication-device-fda-tw#許可證字號