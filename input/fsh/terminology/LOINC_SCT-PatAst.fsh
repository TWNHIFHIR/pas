Alias: $loinc = http://loinc.org
ValueSet: PatAst
Id: pat-ast
Title: "LOINC + SCT + NHI-健保事前審查-病人狀態評估項目值集"
Description: "LOINC + SCT + NHI-健保事前審查-病人狀態評估項目值集"
* ^date = "2026-01-05"
* ^version = "1.1.0"
* ^experimental = false
* $loinc#88020-3
* $loinc#98153-0
* $loinc#89247-1
* $loinc#89243-0
* PatAst#IPS
* PatAst#PDAI
* PatAst#CIRS
* $loinc#75633-8
* PatAst#HCTCI
* http://snomed.info/sct#277460003
* http://snomed.info/sct#711434002
* PatAst#MPNSAFTSS
* PatAst#MPN10

* $loinc#8277-6
* PatAst#PASI
* http://snomed.info/sct#429712009
* PatAst#PsARC
* PatAst#GPPGA
* http://snomed.info/sct#273364009
* PatAst#PCDAI
* PatAst#Mayo
* PatAst#MayoE
* PatAst#PUCAI
* PatAst#PPPASI

CodeSystem: PatAst
Id: nhi-pat-ast
Title: "NHI-健保事前審查-病人狀態評估項目"
Description: "臺灣衛生福利部中央健康保險署「病人狀態評估項目」代碼，代碼出版日期：2026-01-05；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2026-01-05"
* ^version = "1.1.0"
* ^experimental = false
* #IPS "International Prognostic Score" "IPS (International Prognostic Score)"
* #PDAI "Pemphigus Disease Area Index" "PDAI評估指數"
* #CIRS "Cumulative illness rating scale" "CIRS (cumulative illness rating scale) score"
* #HCTCI "Hematopoietic Cell Transplantation-specific Comorbidity Index" "HCT-CI"
* #MPNSAFTSS "MPN-SAF Total Symptom Score" "MPN-SAF-TSS"
* #MPN10 "Myeloproliferative Neoplasm 10-item Total Symptom Score" "MPN-10"
* #C143528 "Hearing impaired"
* #C143750 "Peripheral motor neuropathy"
* #C143752 "Peripheral sensory neuropathy"

* #PASI "Psoriasis area severity index(PASI)"
* #PsARC "Psoriatic Arthritis Response Criteria(PsARC)"
* #GPPGA "Generalized Pustular Psoriasis Physician Global Assessment(GPPGA)"
* #PCDAI "Pediatric Crohn’s disease activity index( PCDAI)"
* #Mayo "Mayo Score"
* #MayoE "Mayo endoscopic subscore"
* #PUCAI "Pediatric Ulcerative Colitis Activity Index (PUCAI)"
* #PPPASI "Palmoplantar Pustulosis Area and Severity Index"
