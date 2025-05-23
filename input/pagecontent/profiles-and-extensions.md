### Resource之Profiles
以下為本IG使用到的所有Profiles。

#### Bundle
- [事前審查-Bundle TWPAS](StructureDefinition-Bundle-twpas.html)
- [事前審查回覆-Bundle Response TWPAS](StructureDefinition-Bundle-response-twpas.html) 

#### Claim
- [事前審查-Claim TWPAS](StructureDefinition-Claim-twpas.html)

#### ClaimResponse
- [自主審查報備-ClaimResponse Self Assessment TWPAS](StructureDefinition-ClaimResponse-self-assessment-twpas.html)
- [事前審查回覆-ClaimResponse TWPAS](StructureDefinition-ClaimResponse-twpas.html) 

#### Organization
- [醫事機構-Organization TWPAS](StructureDefinition-Organization-twpas.html)
- [基因檢測機構-Organization Genetic Testing TWPAS](StructureDefinition-Organization-genetic-testing-twpas.html)
- [TW Core Organization Government](https://twcore.mohw.gov.tw/ig/twcore/0.3.2/StructureDefinition-Organization-govt-twcore.html)

#### Encounter
- [就醫科別-Encounter TWPAS](StructureDefinition-Encounter-twpas.html)

#### Patient
- [病人資訊-Patient TWPAS](StructureDefinition-Patient-twpas.html)

#### Practitioner
- [醫事人員-Practitioner TWPAS](StructureDefinition-Practitioner-twpas.html)

#### ImagingStudy
- [DICOM影像-ImagingStudy TWPAS](StructureDefinition-ImagingStudy-twpas.html)

#### Media
- [非DICOM影像-Media TWPAS](StructureDefinition-Media-twpas.html)

#### DiagnosticReport
- [影像報告-DiagnosticReport Image TWPAS](StructureDefinition-DiagnosticReport-image-twpas.html) (疾病資訊)
- [檢查報告-DiagnosticReport TWPAS](StructureDefinition-DiagnosticReport-twpas.html) (疾病資訊)

#### Observation
- [癌症分期量表-Observation Cancer Stage TWPAS](StructureDefinition-Observation-cancer-stage-twpas.html) (疾病資訊)
- [基因資訊-Observation Diagnostic TWPAS](StructureDefinition-Observation-diagnostic-twpas.html)
- [檢驗檢查-Observation Laboratory Result TWPAS](StructureDefinition-Observation-laboratory-result-twpas.html) (評估資訊)
- [病人狀態評估-Observation Patient Assessment TWPAS](StructureDefinition-Observation-pat-assessment-twpas.html) (評估資訊)
- [治療後疾病狀態評估-Observation Treatment Assessment TWPAS](StructureDefinition-Observation-tx-assessment-twpas.html) (結果資訊)

#### MedicationRequest
- [用藥品項-MedicationRequest Treat TWPAS](StructureDefinition-MedicationRequest-treat-twpas.html) (治療資訊)
- [事前審查品項-MedicationRequest Apply TWPAS](StructureDefinition-MedicationRequest-apply-twpas.html) (申請項目)
 
#### Procedure
- [放射治療-Procedure TWPAS](StructureDefinition-Procedure-twpas.html)

#### Substance
- [放射治療總劑量-Substance TWPAS](StructureDefinition-Substance-twpas.html)

#### Specimen
- [基因檢測檢體-Specimen TWPAS](StructureDefinition-Specimen-twpas.html)

#### DocumentReference
- [文件參照-DocumentReference](StructureDefinition-DocumentReference-twpas.html)

#### Coverage
- [健保事前審查計畫-Coverage](StructureDefinition-Coverage-twpas.html)

#### OperationOutcome
- [系統回應訊息-OperationOutcome TWPAS](StructureDefinition-Operationoutcome-twpas.html)

### Extensions
以下[Extensions](http://hl7.org/fhir/R4/extensibility.html)已定義為臺灣健保癌症用藥事前審查實作指引(TWPAS IG)的一部分。
- [就醫科別(ClaimEncounter)](StructureDefinition-extension-claim-encounter.html)
- [事前審查品項(RequestedService)](StructureDefinition-extension-requestedService.html)
