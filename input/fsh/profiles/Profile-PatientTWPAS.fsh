Profile:        PatientTWPAS
Parent:         TWCorePatient
Id:             Patient-twpas
Title:          "病人資訊-Patient TWPAS"
Description:    "此病人資訊-Patient TWPAS Profile說明本IG如何進一步定義臺灣核心-病人(TW Core Patient) Profile以呈現癌藥事前審查之病人基本資料"
* identifier 1..2
* identifier ^slicing.rules = #closed
* identifier[idCardNumber] 1..1
* identifier[residentNumber] 0..0
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
* birthDate ^short = "出生日期，YYYY-MM-DD，西元年月日。"
* gender ^short = "male:男性 ｜ female:女性 ｜ other:其他 ｜ unknown:未知"
* . obeys patient-gender-match
//* identifier[idCardNumber] obeys id-card-number

Invariant:   pat-name
Description: "病人姓名有誤 ，超過40字"
Expression:  "text.length() <= 40"
Severity:    #error

Invariant: patient-gender-match
Description: "gender依據identifier:idCardNumber第二位字符檢核男性與女性代碼 (1=male, 2=female)"
Expression: "identifier.where(system = 'http://www.moi.gov.tw').value.exists() implies (identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '1' implies gender = 'male') and (identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '2' implies gender = 'female')"
Severity: #error

/*Invariant: id-card-number
Description: "身分證號共十碼，首碼以英文字母代表直轄市、縣（市）別，第二碼至第十碼為數字碼。"
Expression: "value.matches('^[A-Za-z][0-9]{9}$')"
Severity: #error*/
