Profile:        DiagnosticReportImageTWPAS
Parent:         DiagnosticReport
//Parent:         TWCoreDiagnosticReport
Id:             DiagnosticReport-image-twpas
Title:          "影像報告-DiagnosticReport Image TWPAS"
Description:    "此影像報告-DiagnosticReport Image TWPAS Profile說明本IG如何進一步定義臺灣核心-診斷報告(TW Core DiagnosticReport) Profile以呈現癌藥事前審查之影像報告"
* code from ICD10PCS2023Image (preferred)
* code.coding 1..1
* code.coding ^slicing.rules = #closed
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* code.coding contains 
    TW2023ICD10PCS 0..1 MS and
    TW2014ICD10PCS 0..1 MS and
    LOINC 0..1 MS
/* code.coding[LOINCObservationCode] 0..0
* code.coding[TWLaboratoryCategory] 0..0
* code.coding[TW2021ICD10PCS] 0..0*/

* code.coding[TW2014ICD10PCS] ^short = "2014年中文版ICD 10 PCS-影像報告值集"
* code.coding[TW2014ICD10PCS].code 1..1 MS
* code.coding[TW2014ICD10PCS].system 1..1 MS
* code.coding[TW2014ICD10PCS].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2014-tw"
* code.coding[TW2014ICD10PCS] from ICD10PCSImage (extensible)
* code.coding[TW2014ICD10PCS] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* code.coding[TW2023ICD10PCS] ^short = "2023年中文版ICD 10 PCS-影像報告值集"
* code.coding[TW2023ICD10PCS].code 1..1 MS
* code.coding[TW2023ICD10PCS].system 1..1 MS
* code.coding[TW2023ICD10PCS].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw"
* code.coding[TW2023ICD10PCS] from ICD10PCS2023Image (extensible)
* code.coding[TW2023ICD10PCS] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-75853-85b695304c2c447a94a55a3788019ccf-1.ods)。"
* code.coding[LOINC] ^short = "外院報告請依ICD-10-PCS填寫，若無法對應，可使用LOINC代碼#18748-4呈現。內視鏡檢查報告，請使用LOINC代碼呈現。"
* code.coding[LOINC].code 1..1 MS
* code.coding[LOINC].system 1..1 MS
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC].code = #18748-4 
* code.coding[LOINC] from http://hl7.org/fhir/ValueSet/report-codes (extensible)
* code.text 0..1 MS
* performer 1..1 MS
* performer only Reference(PractitionerTWPAS) 
* subject 1..1
* subject only Reference(PatientTWPAS) 
* conclusion 1..1 MS
//* conclusion obeys pas-2
* effectiveDateTime 1..1 MS
* imagingStudy 0.. MS
* imagingStudy only Reference(ImagingStudyTWPAS)
* media.link only Reference(MediaTWPAS)
* media MS
// 因為The repeating element has a pattern. The pattern will apply to all the repeats (this has not been clear to all users)，category最多填一筆
* category 1..1
* category.coding 1..1
* category = NHIPASSupportingInfoType#imagingReport
* code  ^short = "影像報告，ICD-10-PCS。外院報告請依ICD-10-PCS填寫，若無法對應，可使用LOINC代碼#18748-4呈現。內視鏡檢查報告，請使用LOINC代碼呈現。"
* code.text  ^short = "影像檢查的身體部位"
* conclusion  ^short = "影像報告結果，請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* effectiveDateTime  ^short = "影像報告日期，YYYY-MM-DD"
* performer ^short = "簽發影像報告醫師身分證號"
* imagingStudy ^short = "DICOM影像，SNOMED CT"
* media ^short = "非DICOM影像"
* imagingStudy ^condition = "image-report"
* media ^condition = "image-report"

* presentedForm MS
* presentedForm.contentType 1..1 MS
* presentedForm.url 1..1 MS
* presentedForm.url ^example.valueUrl = "file://ImagingDiagnosticReport01.pdf"
* presentedForm.title 1..1 MS
* presentedForm ^short = "報告結果-MIMEType。若需要，可上傳影像報告的PDF檔。"
* presentedForm.url ^short = "影像報告（請填寫完整檔案路徑）"
* presentedForm.title ^short = "影像報告名稱"
* presentedForm obeys UploadContent

* . obeys image-report
Invariant:   image-report
Description: "DICOM影像(imagingStudy)或非DICOM影像(media)擇一必填。"
Expression:  "imagingStudy.exists() or media.exists()"
Severity:    #error

