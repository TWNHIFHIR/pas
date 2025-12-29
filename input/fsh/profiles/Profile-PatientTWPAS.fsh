Profile:        PatientTWPAS
Parent:         https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Id:             Patient-twpas
Title:          "病人資訊-Patient TWPAS"
Description:    "此病人資訊-Patient TWPAS Profile說明本IG如何進一步定義臺灣核心-病人(TW Core Patient) Profile以呈現事前審查之病人基本資料"
* ^version = "1.1.0"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Patient-twpas"
* identifier 1..2
* identifier ^slicing.rules = #closed
* identifier[idCardNumber] 0..1
* identifier[passportNumber] 0..0
* name 1..1
* name[official] 0..0
* name[temp] 0..0
* name[anonymous] 0..0
* name[usual] 1..1
* name[usual].text 1..1
* name obeys pat-name
* identifier[idCardNumber] ^short = "身分證號，被保險人國民身分證統一編號。"
* identifier[medicalRecord] ^short = "病歷號 (參與醫院必須註冊命名系統)，由醫院自行填寫。"
* identifier[residentNumber] ^short = "居留證號。"
* birthDate ^short = "出生日期，YYYY-MM-DD，西元年月日。"
* gender ^short = "male:男性 ｜ female:女性 ｜ other:其他 ｜ unknown:未知"
* . obeys patient-gender-match
* identifier[residentNumber] obeys resident-number

Invariant:   pat-name
Description: "病人姓名有誤 ，超過40字"
Expression:  "text.length() <= 40"
Severity:    #error

Invariant: patient-gender-match
Description: "gender依據identifier:idCardNumber第二位字符檢核男性與女性代碼 (1=male, 2=female)"
Expression: "identifier.where(system = 'http://www.moi.gov.tw').value.exists() implies (identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '1' implies gender = 'male') and (identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '2' implies gender = 'female')"
Severity: #error

Invariant: resident-number
Description: "居留證號格式為：「1碼英文+9碼數字」或「2碼英文+8碼數字」。"
Expression: "value.matches('^([A-Za-z][0-9]{9}|[A-Za-z]{2}[0-9]{8})$')"
Severity: #error
