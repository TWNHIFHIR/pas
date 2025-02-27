Alias: $loinc = http://loinc.org
ValueSet: PatAst
Id: pat-ast
Title: "LOINC + NHI-健保事前審查-病人狀態評估項目值集"
Description: "LOINC + NHI-病人狀態評估項目值集"
* ^date = "2024-12-06"
* ^version = "1.0.2"
* ^experimental = false
* $loinc#88020-3
* $loinc#98153-0
* $loinc#89247-1
* $loinc#89243-0
//* http://snomed.info/sct#441870009
* PatAst#IPS
* PatAst#PDAI
* PatAst#CIRS
* $loinc#75633-8
* PatAst#HCTCI

CodeSystem: PatAst
Id: nhi-pat-ast
Title: "NHI-健保事前審查-病人狀態評估項目"
Description: "臺灣衛生福利部中央健康保險署「病人狀態評估項目」代碼，代碼出版日期：2024-12-06；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2024-12-06"
* ^version = "1.0.2"
* ^experimental = false
* #IPS "International Prognostic Score" "IPS (International Prognostic Score)"
* #PDAI "Pemphigus Disease Area Index" "PDAI評估指數"
* #CIRS "Cumulative illness rating scale" "CIRS (cumulative illness rating scale) score"
* #HCTCI "Hematopoietic Cell Transplantation-specific Comorbidity Index" "HCT-CI"