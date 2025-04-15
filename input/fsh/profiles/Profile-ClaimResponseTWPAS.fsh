Profile:        ClaimResponseSelfAssessmentTWPAS
Parent:         ClaimResponse
Id:             ClaimResponse-self-assessment-twpas
Title:          "自主審查報備-ClaimResponse Self Assessment TWPAS"
Description:    "此自主審查報備-ClaimResponse TWPAS Profile說明本IG如何進一步定義FHIR的ClaimResponse Resource以呈現自主審查報備之內容。 
  
現行開放自主事前審查項目僅有心臟及肝臟移植，若醫院要自主事前審查需向健保署申請，通過後，健保署會於署內系統維護，具有此資格之院所才可填報自主審查報備。"
* status = http://hl7.org/fhir/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = http://hl7.org/fhir/claim-use#preauthorization
* patient only Reference(PatientTWPAS)
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* insurer only Reference(TWCoreOrganizationGovt)
* item.adjudication.reason from NHIApproveClaimComment
* item.adjudication.value 1..1
* item.adjudication.reason 1..1
* item.detail.adjudication.reason from NHIApproveItemComment
* item.detail.adjudication.reason 1..1
* created and item.adjudication.reason and item.adjudication.value and disposition MS
* created ^short = "核定日期。若申請案件類別為3時須填寫。YYYY-MM-DD，西元年月日。"
* item.adjudication.value ^short = "核定數量，若申請案件類別為3時須填寫。"
* item.adjudication.reason ^short = "受理審查案件核定註記。若申請案件類別為3時須填寫。1:同意 | 2:不予同意 | 3:部份同意 | 4:補件 | 5:退件"
* item.adjudication.category ^short = "【因FHIR設計而需必填】"
* item.adjudication.category.coding.system ^example[0].valueUri = "http://terminology.hl7.org/CodeSystem/adjudication"
* item.adjudication.category.coding.code ^example[0].valueString = "submitted"
* item.detail.adjudication.reason ^short = "個別醫令核定註記。0:審核中 | 1:同意 | 2:不予同意 | 3:部份同意 | 4:補件 | 5:退件 | 6:不予同意:對應手術亦不支付 | 7:改核:如審查核定意見"
* item.detail.detailSequence ^short = "請填寫對應的Claim.item.sequence"
* item.detail.adjudication.category ^short = "【因FHIR設計而需必填】"
* item.detail.adjudication.category.coding.system ^example[0].valueUri = "http://terminology.hl7.org/CodeSystem/adjudication"
* item.detail.adjudication.category.coding.code ^example[0].valueString = "submitted"
/*
* disposition ^short = "案件受理狀態。待處理 | 處理中 | 處理中(等待附件檔) | 處理中(檔案檢核中) | 處理中(等待檢查申報資料) | 資料檢核失敗 | 檔案傳送失敗 | 附件檔轉檔失敗 | 影像檔轉檔失敗 | 電子病歷檔轉檔失敗 | 申請檔案檢核失敗 | 申請檔案未備齊 | 已受理 | 審查中 | 審畢結果"
* . obeys case-acceptance-status

Invariant:   case-acceptance-status
Description: "若案件受理狀態(disposition)為 `待處理`、`處理中`、`處理中(等待附件檔)`、`處理中(檔案檢核中)`、`處理中(等待檢查申報資料)`，outcome需填代碼#queued；若案件受理狀態(disposition)為 `資料檢核失敗`、`檔案傳送失敗`、`附件檔轉檔失敗`、`影像檔轉檔失敗`、`電子病歷檔轉檔失敗`、`申請檔案檢核失敗`、`申請檔案未備齊`，outcome需填代碼#error；若案件受理狀態(disposition)為 `已受理`、`審查中`，outcome需填代碼#partial；若案件受理狀態(disposition)為 `審畢結果`，outcome需填代碼#complete。"
Expression:  "(disposition = '待處理' or disposition = '處理中' or disposition =  '處理中(等待附件檔)' or disposition =  '處理中(檔案檢核中)' or disposition =  '處理中(等待檢查申報資料)') and outcome='queued' or (disposition = '資料檢核失敗' or disposition = '檔案傳送失敗' or disposition =  '附件檔轉檔失敗' or disposition =  '影像檔轉檔失敗' or disposition =  '電子病歷檔轉檔失敗' or disposition =  '申請檔案檢核失敗' or disposition =  '申請檔案未備齊') and outcome='error' or (disposition = '已受理' or disposition = '審查中') and outcome='partial' or (disposition = '審畢結果') and outcome='complete'"
Severity:    #error
*/

Profile:        ClaimResponseTWPAS
Parent:         ClaimResponse
Id:             ClaimResponse-twpas
Title:          "事前審查回覆-ClaimResponse TWPAS"
Description:    "此事前審查回覆-ClaimResponse TWPAS Profile說明本IG如何進一步定義FHIR的ClaimResponse Resource以呈現癌藥事前審查回覆之內容  
案件核定結果係綜合該申請案件醫令審核結果做為判斷依據，規則說明如下：  
(1).所有醫令皆核定為1-同意，則該案件審查結果為1-同意。  
(2).非所有醫令核定為1-同意，其中有一醫令核定為1-同意或3-部分同意，則該案件審查結果為3-部分同意。  
(3).所有醫令皆核定為2-不同意或6-不予同意，則該案件審查結果為2-不同意。  
(4).排除上述(1)、(2)、(3)規則，案件中有一醫令核定為補件，則該案件審查結果為4-補件。  
(5).排除上述(1)、(2)、(3)規則，案件中有一醫令核定為退件，則該案件審查結果為5-退件。  
(6).若核定註記為7-改核:如審查核定意見，則判斷申請量與核定數量，若核定同總申請量，該醫令核定註記視為  
  1. 同意;若核定量為0(空值視同0)，該醫令核定註記視為2-不同意;核定量小於總申請量，該醫令核定註記視為3-部分同意。並綜合該申請案件醫令審核結果，作為該案件審查結果(同上述五點)。"

* status = http://hl7.org/fhir/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = http://hl7.org/fhir/claim-use#preauthorization
* patient only Reference(PatientTWPAS)
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* insurer only Reference(TWCoreOrganizationGovt)
* item.adjudication.reason from NHIApproveClaimComment
* item.adjudication.value 1..1
* item.adjudication.reason 1..1
* item.detail.adjudication.reason from NHIApproveItemComment
* item.detail.adjudication.reason 1..1
* created and item.adjudication.reason and item.adjudication.value and item.detail.adjudication.reason and disposition MS
* created ^short = "核定日期或受理日期，即為案件受理狀態(disposition)之異動日期，依據其狀態不同而有不同日期，例如案件受理狀態為已受理，此日期則為受理日期；若為審畢結果則為核定日期。"
* item.adjudication.category ^short = "【因FHIR設計而需必填】"
* item.adjudication.category.coding.system ^example[0].valueUri = "http://terminology.hl7.org/CodeSystem/adjudication"
* item.adjudication.category.coding.code ^example[0].valueString = "submitted"
* item.adjudication.value ^short = "核定數量。"
* item.adjudication.reason ^short = "受理審查案件核定註記。1:同意 | 2:不予同意 | 3:部份同意 | 4:補件 | 5:退件"
* item.detail.adjudication.reason ^short = "個別醫令核定註記。0:審核中 | 1:同意 | 2:不予同意 | 3:部份同意 | 4:補件 | 5:退件 | 6:不予同意:對應手術亦不支付 | 7:改核:如審查核定意見"
* item.detail.detailSequence ^short = "請填寫對應的Claim.item.sequence"
* item.detail.adjudication.category ^short = "【因FHIR設計而需必填】"
* item.detail.adjudication.category.coding.system ^example[0].valueUri = "http://terminology.hl7.org/CodeSystem/adjudication"
* item.detail.adjudication.category.coding.code ^example[0].valueString = "submitted"
* disposition 1..
* disposition from NHIAcceptanceStatus
* disposition ^short = "案件受理狀態。待處理 | 處理中 | 處理中(等待附件檔) | 處理中(檔案檢核中) | 處理中(等待檢查申報資料) | 資料檢核失敗 | 檔案傳送失敗 | 附件檔轉檔失敗 | 影像檔轉檔失敗 | 電子病歷檔轉檔失敗 | 申請檔案檢核失敗 | 申請檔案未備齊 | 已受理 | 審查中 | 審畢結果"
* request 1.. MS
* request only Reference(ClaimTWPAS)
