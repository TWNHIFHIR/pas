Alias: $loinc = http://loinc.org
ValueSet: PatAst
Id: pat-ast
Title: "LOINC + SCT + NHI-健保事前審查-病人狀態評估項目值集"
Description: "LOINC + SCT + NHI-健保事前審查-病人狀態評估項目值集"
* ^date = "2025-10-01"
* ^version = "1.0.8"
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

CodeSystem: PatAst
Id: nhi-pat-ast
Title: "NHI-健保事前審查-病人狀態評估項目"
Description: "臺灣衛生福利部中央健康保險署「病人狀態評估項目」代碼，代碼出版日期：2025-10-01；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2025-10-01"
* ^version = "1.0.8"
* ^experimental = false
* #IPS "International Prognostic Score" "IPS (International Prognostic Score)"
* #PDAI "Pemphigus Disease Area Index" "PDAI評估指數"
* #CIRS "Cumulative illness rating scale" "CIRS (cumulative illness rating scale) score"
* #HCTCI "Hematopoietic Cell Transplantation-specific Comorbidity Index" "HCT-CI"