/*CodeSystem: CancerStage
Id: cancer-stage
Title: "NHI-健保事前審查-癌症分期量表項目"
Description: "臺灣衛生福利部中央健康保險署「癌症分期量表項目」代碼，代碼出版日期：2026-08-03；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2026-08-03"
* ^version = "1.2.5"
* ^experimental = false
* #GLES "Gleason grade finding for prostatic cancer" "葛里森分數(Gleason score)"
* #RAIS "Rai staging system for chronic lymphocytic leukemia (tumor staging)" "Rai Stage"
* #BINET "Binet staging classification for chronic lymphocytic leukemia (tumor staging)" "Binet"
* #FIGO "FIGO stage for gynecological malignancy" "FIGO stage"
* #CNS "CNS WHO分級"
* #NET_2010 "NET WHO 2010分類" "NET WHO 2010分類(後來又有2017等版本，但給付規定上是寫2010版)"
* #TNM "Tumor-node-metastasis (TNM) stage grouping (observable entity)" "TNM分期"
*/
ValueSet: CancerStage
Id: cancer-stage
Title: "SCT + NCI-健保事前審查-癌症分期量表項目值集"
Description: "SCT + NCI-健保事前審查-癌症分期量表項目值集"
* ^date = "2026-08-03"
* ^version = "1.2.5"
* ^experimental = false
* http://snomed.info/sct#385377005
* http://snomed.info/sct#372278000
* http://snomed.info/sct#1156226007
* http://snomed.info/sct#1156224005
* http://snomed.info/sct#1156225006
* http://snomed.info/sct#1149131009
* http://snomed.info/sct#385361009
* http://snomed.info/sct#1149099005
* http://snomed.info/sct#106243009
* http://snomed.info/sct#103419001
* http://snomed.info/sct#409720004
* http://snomed.info/sct#405916000
* http://snomed.info/sct#405931009
* http://snomed.info/sct#385357003
* http://snomed.info/sct#426757001
* http://snomed.info/sct#396192007
* http://snomed.info/sct#277460003
* http://snomed.info/sct#1812481000004109
* http://snomed.info/sct#449205006
* http://snomed.info/sct#254362000
* http://snomed.info/sct#1342413004
* http://snomed.info/sct#1149164009
* http://snomed.info/sct#278159002
* http://snomed.info/sct#254363005
* http://snomed.info/sct#1149163003
* http://snomed.info/sct#399390009
* http://snomed.info/sct#254372002
* NciThesaurus#C139007
* NciThesaurus#C141392
* NciThesaurus#C133427
* NciThesaurus#C115134
* NciThesaurus#C139006
* NciThesaurus#C141099
* NciThesaurus#C28067
* NciThesaurus#C141147
* NciThesaurus#C143151
* NciThesaurus#C146847
* NciThesaurus#C123333
* NciThesaurus#C198826


ValueSet: CancerStageScoreMyelomaISS
Id: cancer-stage-score-myeloma-iss
Title: "NCI-健保事前審查-Myeloma_ISS癌症分期量表結果值集"
Description: "NCI-健保事前審查-Myeloma_ISS癌症分期量表結果值集"
* ^date = "2026-08-03"
* ^version = "1.2.5"
* ^experimental = false
* NciThesaurus#C70658 "ISS Stage I Plasma Cell Myeloma"
* NciThesaurus#C70659 "ISS Stage II Plasma Cell Myeloma"
* NciThesaurus#C70660 "ISS Stage III Plasma Cell Myeloma"

ValueSet: CancerStageScore
Id: cancer-stage-score
Title: "NCI-健保事前審查-FIGO癌症分期量表結果值集"
Description: "NCI-健保事前審查-FIGO癌症分期量表結果值集"
* ^date = "2026-08-03"
* ^version = "1.2.5"
* ^experimental = false
* NciThesaurus#C96243 "FIGO Stage 0"
* NciThesaurus#C96244 "FIGO Stage I"
* NciThesaurus#C96245 "FIGO Stage IA"
* NciThesaurus#C96246 "FIGO Stage IA1"
* NciThesaurus#C96247 "FIGO Stage IA2"
* NciThesaurus#C96248 "FIGO Stage IB"
* NciThesaurus#C96249 "FIGO Stage IB1"
* NciThesaurus#C96250 "FIGO Stage IB2"
* NciThesaurus#C162222 "FIGO Stage IB3"
* NciThesaurus#C96251 "FIGO Stage IC"
* NciThesaurus#C128099 "FIGO Stage IC1"
* NciThesaurus#C128100 "FIGO Stage IC2"
* NciThesaurus#C128101 "FIGO Stage IC3"
* NciThesaurus#C96252 "FIGO Stage II"
* NciThesaurus#C96253 "FIGO Stage IIA"
* NciThesaurus#C162223 "FIGO Stage IIA1"
* NciThesaurus#C128103 "FIGO Stage IIA1(i)"
* NciThesaurus#C128104 "FIGO Stage IIA1(ii)"
* NciThesaurus#C162224 "FIGO Stage IIA2"
* NciThesaurus#C96254 "FIGO Stage IIB"
* NciThesaurus#C188300 "FIGO Stage IIC1"
* NciThesaurus#C96255 "FIGO Stage III"
* NciThesaurus#C96256 "FIGO Stage IIIA"
* NciThesaurus#C128102 "FIGO Stage IIIA1"
* NciThesaurus#C128105 "FIGO Stage IIIA2"
* NciThesaurus#C96257 "FIGO Stage IIIB"
* NciThesaurus#C96258 "FIGO Stage IIIC"
* NciThesaurus#C96259 "FIGO Stage IIIC1"
* NciThesaurus#C96260 "FIGO Stage IIIC2"
* NciThesaurus#C96261 "FIGO Stage IV"
* NciThesaurus#C96262 "FIGO Stage IVA"
* NciThesaurus#C96263 "FIGO Stage IVB"

CodeSystem: NciThesaurus
Id: nci-thesaurus
Title: "NCI 健保事前審查-Thesaurus"
Description: "NCI 健保事前審查-Thesaurus，參照至http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl  
代碼出版日期：2022-10-13。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2026-08-03"
* ^version = "1.2.5"
* ^experimental = false
* #C96243 "FIGO Stage 0"
* #C96244 "FIGO Stage I"
* #C96245 "FIGO Stage IA"
* #C96246 "FIGO Stage IA1"
* #C96247 "FIGO Stage IA2"
* #C96248 "FIGO Stage IB"
* #C96249 "FIGO Stage IB1"
* #C96250 "FIGO Stage IB2"
* #C162222 "FIGO Stage IB3"
* #C96251 "FIGO Stage IC"
* #C128099 "FIGO Stage IC1"
* #C128100 "FIGO Stage IC2"
* #C128101 "FIGO Stage IC3"
* #C96252 "FIGO Stage II"
* #C96253 "FIGO Stage IIA"
* #C162223 "FIGO Stage IIA1"
* #C128103 "FIGO Stage IIA1(i)"
* #C128104 "FIGO Stage IIA1(ii)"
* #C162224 "FIGO Stage IIA2"
* #C96254 "FIGO Stage IIB"
* #C188300 "FIGO Stage IIC1"
* #C96255 "FIGO Stage III"
* #C96256 "FIGO Stage IIIA"
* #C128102 "FIGO Stage IIIA1"
* #C128105 "FIGO Stage IIIA2"
* #C96257 "FIGO Stage IIIB"
* #C96258 "FIGO Stage IIIC"
* #C96259 "FIGO Stage IIIC1"
* #C96260 "FIGO Stage IIIC2"
* #C96261 "FIGO Stage IV"
* #C96262 "FIGO Stage IVA"
* #C96263 "FIGO Stage IVB"

// 2024/1/27 added
* #C139007 "Myeloma ISS Stage"
* #C141392 "Myeloma RISS Stage"
* #C133427 "Neuroblastoma INRGSS Stage"
* #C115134 "BCLC Stage"
* #C139006 "Durie/Salmon Stage (DSS)"
* #C141099 "ENSAT Stage"
* #C28067 "Hepatoblastoma Stage"
* #C141147 "Lugano Stage"
* #C143151 "Masaoka-Koga Stage"
* #C146847 "Mediastinal Malignant Germ Cell Tumor Stage"
* #C123333 "Reese-Ellsworth Staging System"
* #C198826 "Modified Chang's Staging of Medulloblastoma"

// 2026/7 added
* #C70658 "ISS Stage I Plasma Cell Myeloma"
* #C70659 "ISS Stage II Plasma Cell Myeloma"
* #C70660 "ISS Stage III Plasma Cell Myeloma"