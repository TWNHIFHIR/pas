### Profiles範例
以下為本IG使用到的所有Profiles的範例。
<div class="bg-danger">
因IG設計工具的限制，在IG中的各範例Resource必填<code>id</code>。但醫療機構端實際依據本IG規格於上傳申請資料時，這些Resource.id並不是必填欄位。   <br/> 
唯需注意的是「Bundle中的<code>fullUrl</code>必須使用UUID，並且應確保<code>Bundle.entry.fullUrl</code>能與同次所傳送的各Resource關聯。」    <br/>
寫法可參考「<a href="Bundle-bun-uuid-example.html">Bundle：事前審查-自主審查、多份影像報告（UUID）範例</a>」。  <br/>
<b>(範例內容僅為參考，實際申報內容請以實際資料為主。)</b>
</div>

#### Bundle
- [事前審查-送核、套組檢驗、多事前審查癌藥品項](Bundle-bun-1.html)：依據癌藥事前審查-Bundle TWPAS Profile呈現癌藥事前審查之範例
- [事前審查-申復、有共病](Bundle-bun-3.html)：依據癌藥事前審查-Bundle TWPAS Profile呈現癌藥事前審查之範例
- [事前審查-自主審查、多份影像報告（UUID）](Bundle-bun-uuid-example.html)：依據癌藥事前審查-Bundle TWPAS Profile呈現癌藥事前審查之自主審查範例
- [事前審查-自主審查](Bundle-bun-self.html)：依據癌藥事前審查-Bundle TWPAS Profile呈現癌藥事前審查之自主審查範例
- [事前審查回覆](Bundle-bun-response.html)：依據事前審查回覆-Bundle Response TWPAS Profile呈現癌藥事前審查回覆之範例
- [<span class="bg-success">免疫製劑事前審查</span>](Bundle-bun-imm.html)：依據免疫製劑事前審查-Bundle Immunologic Aagent TWPAS Profile呈現免疫製劑事前審查之範例

#### Claim
- [事前審查-送核、套組檢驗、多事前審查癌藥品項](Claim-cla-1.html)：依據癌藥事前審查-Claim TWPAS Profile呈現事前審查之範例，含兩筆檢驗(查)
- [事前審查-申復、有共病](Claim-cla-3.html)：依據癌藥事前審查-Claim TWPAS Profile呈現癌藥事前審查之範例
- [<span class="bg-success">免疫製劑事前審查</span>](Claim-cla-imm.html)：依據免疫製劑事前審查-Claim Immunologic Aagent TWPAS Profile呈現免疫製劑事前審查

#### ClaimResponse
- [事前審查結果-自主審查](ClaimResponse-self-assessment-example.html)：依據事前審查結果-ClaimResponse TWPAS Profile呈現事前審查結果之範例
- [事前審查回覆](ClaimResponse-claim-response-example.html)：依據事前審查回覆-ClaimResponse TWPAS Profile呈現事前審查回覆之範例

#### AllergyIntolerance
- [<span class="bg-success">過敏史</span>](AllergyIntolerance-all-min.html)：依據過敏史-AllergyIntolerance TWPAS Profile呈現過敏史之範例

#### Organization
- [醫事機構](Organization-org-hosp-example.html)：依據機構-Organization TWPAS Profile呈現醫事機構之範例
- [基因檢測機構](Organization-org-gene-example.html)：依據基因檢測機構-Organization Genetic Testing TWPAS Profile呈現基因檢測機構之範例
- [衛生福利部中央健康保險署](Organization-org-nhi.html)：依據臺灣核心-政府機構（TW Core Organization Government）Profile呈現衛生福利部中央健康保險署

#### Encounter
- [就醫科別](Encounter-enc-min.html)：依據就醫科別-Encounter TWPAS Profile呈現就醫科別之範例
- [<span class="bg-success">門診病歷</span>](Encounter-enc-opd.html)：依據門診病歷-Encounter OPD TWPAS Profile呈現門診病歷之範例

#### Patient
- [病人資訊](Patient-pat-min.html)：依據病人資訊-Patient TWPAS Profile呈現病人資訊之範例
- [病人資訊-使用居留證號](Patient-pat-resident.html)：依據病人資訊-Patient TWPAS Profile呈現病人資訊之範例

#### Practitioner
- [醫事人員](Practitioner-pra-min.html)：依據醫事人員-Practitioner TWPAS Profile呈現醫事人員之範例

#### ImagingStudy
- [影像](ImagingStudy-imaStu-min.html)：依據DICOM影像-ImagingStudy TWPAS Profile呈現影像之範例

#### Media
- [非DICOM影像](Media-med-min.html)：依據非DICOM影像-Media TWPAS Profile呈現非DICOM影像之範例

#### DiagnosticReport
- [影像報告](DiagnosticReport-diaRep-ima-min.html)：依據影像報告-DiagnosticReport Image TWPAS Profile呈現影像報告之範例 (疾病資訊)
- [檢查報告](DiagnosticReport-diaRep-min.html)：依據檢查報告-DiagnosticReport TWPAS Profile呈現檢查報告之範例 (疾病資訊)

#### Observation
- [癌症分期量表-FIGO](Observation-obs-cancer-figo.html)：依據癌症分期量表-Observation Cancer Stage TWPAS Profile呈現癌症分期量表FIGO之範例 (疾病資訊)
- [癌症分期量表-CNS](Observation-obs-cancer-cns.html)：依據癌症分期量表-Observation Cancer Stage TWPAS Profile呈現癌症分期量表CNS之範例 (疾病資訊)
- [癌症分期量表-TNM](Observation-obs-cancer-tnm.html)：依據癌症分期量表-Observation Cancer Stage TWPAS Profile呈現癌症分期量表TNM之範例 (疾病資訊)
- [基因資訊](Observation-obs-diagnostic-min.html)：依據基因資訊-Observation Diagnostic TWPAS Profile呈現基因資訊之範例
- [檢驗檢查-單項](Observation-obs-lab-min.html)：依據檢驗檢查-Observation Laboratory Result TWPAS Profile呈現單項檢驗檢查之範例 (評估資訊)
- [檢驗檢查-套組(全套血液檢查)](Observation-obs-lab-cbc.html)：依據檢驗檢查-Observation Laboratory Result TWPAS Profile呈現套組檢驗檢查之範例 (評估資訊)
- [病人狀態評估-NYHA](Observation-obs-pat-nyha.html)：依據病人狀態評估-Observation Patient Assessment TWPAS Profile呈現病人狀態評估(NYHA)之範例 (評估資訊)
- [病人狀態評估-PDAI](Observation-obs-pat-pdai.html)：依據病人狀態評估-Observation Patient Assessment TWPAS Profile呈現病人狀態評估(PDAI)之範例 (評估資訊)
- [病人狀態評估-CTCAE](Observation-obs-pat-ctcae.html)：依據病人狀態評估-Observation Patient Assessment TWPAS Profile呈現病人狀態評估(CTCAE)之範例 (評估資訊)
- [治療後疾病狀態評估](Observation-obs-tx-min.html)：依據治療後疾病狀態評估-Observation Treatment Assessment TWPAS Profile呈現治療後疾病狀態評估之範例 (結果資訊)
- [<span class="bg-success">血型</span>](Observation-obs-blood-group.html)：依據血型-Observation Blood Group TWPAS Profile呈現血型之範例 (病人資訊)
- [<span class="bg-success">主觀描述(S)</span>](Observation-obs-subjective.html)：依據主觀描述-Observation Subjective TWPAS Profile呈現主觀描述之範例 (門診病歷)
- [<span class="bg-success">客觀描述(O)</span>](Observation-obs-objective.html)：依據客觀描述-Observation Objective TWPAS Profile呈現客觀描述之範例 (門診病歷)

#### ClinicalImpression
- [<span class="bg-success">評估(A)</span>](ClinicalImpression-cliImp-min.html)：依據評估-ClinicalImpression TWPAS Profile呈現評估之範例 (門診病歷)

#### CarePlan
- [<span class="bg-success">計畫(P)</span>](CarePlan-careplan-min.html)：依據計畫-CarePlan TWPAS Profile呈現計畫之範例 (門診病歷)

#### Condition
- [<span class="bg-success">診斷</span>](Condition-con-diagnosis.html)：依據診斷-Condition TWPAS Profile呈現診斷之範例 (門診病歷)

#### MedicationRequest
- [用藥品項](MedicationRequest-medReq-treat.html)：依據用藥品項-MedicationRequest Treat TWPAS Profile呈現用藥品項之範例 (治療資訊)
- [事前審查品項-多用法](MedicationRequest-medReq-apply.html)：依據事前審查品項-MedicationRequest Apply TWPAS Profile呈現事前審查品項之範例 (申請項目)
- [事前審查品項-給付適應症特定代碼](MedicationRequest-medReq-apply-2.html)：依據事前審查品項-MedicationRequest Apply TWPAS Profile呈現特定事前審查品項代碼之範例 (申請項目)
 
#### Procedure
- [放射/照光治療](Procedure-pro-min.html)：依據放射/照光治療-Procedure TWPAS Profile呈現放射/照光治療之範例

#### Substance
- [放射/照光治療總劑量](Substance-sub-min.html)：依據放射/照光治療總劑量-Substance TWPAS Profile呈現放射/照光治療之範例

#### Specimen
- [基因檢測檢體](Specimen-spe-min.html)：依據基因檢測檢體-Specimen TWPAS Profile呈現基因檢測檢體之範例

#### DocumentReference
- [基因報告](DocumentReference-doc-gene-min.html)：依據文件參照-DocumentReference TWPAS Profile呈現基因報告之範例
- [治療計畫文件](DocumentReference-doc-careplan-min.html)：依據文件參照-DocumentReference TWPAS Profile呈現治療計畫文件之範例
- [檢驗(查)附件](DocumentReference-doc-test-min.html)：依據文件參照-DocumentReference TWPAS Profile呈現檢驗(查)附件之範例
- [病歷資料](DocumentReference-doc-medicalRecord-min.html)：依據文件參照-DocumentReference TWPAS Profile呈現病歷資料之範例
- [病人狀態評估報告](DocumentReference-doc-patientAssessment-min.html)：依據文件參照-DocumentReference TWPAS Profile呈現病人狀態評估報告之範例

#### Coverage
- [健保事前審查計畫](Coverage-cov-min.html)：依據健保事前審查計畫-Coverage TWPAS Profile呈現健保事前審查計畫之範例

#### OperationOutcome
- [系統回應錯誤訊息](OperationOutcome-error-example.html)：依據系統回應訊息-OperationOutcome TWPAS Profile呈現使用錯誤語法查詢系統時之回應範例