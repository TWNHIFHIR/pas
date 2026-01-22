ValueSet: SNOMEDCTBodySite
Id: sct-body-site
Title: "SNOMEDCT-健保事前審查-身體部位值集"
Description: "SNOMEDCT-健保事前審查-身體部位值集，代碼對應請參考[臺灣健保署身體部位代碼對應SNOMED CT](ConceptMap-nhi-sct-body-site.html)。"
* ^date = "2026-01-05"
* ^version = "1.1.1"
* ^experimental = false
* http://snomed.info/sct#69536005
* http://snomed.info/sct#45048000
* http://snomed.info/sct#774007
* http://snomed.info/sct#43799004
* http://snomed.info/sct#122494005
* http://snomed.info/sct#122495006
* http://snomed.info/sct#122496007
* http://snomed.info/sct#416550000
* http://snomed.info/sct#80581009
* http://snomed.info/sct#818987002
* http://snomed.info/sct#816991004
* http://snomed.info/sct#66019005
* http://snomed.info/sct#36582005
* http://snomed.info/sct#26107004
* http://snomed.info/sct#113257007
* http://snomed.info/sct#87141009
* http://snomed.info/sct#3058005
* http://snomed.info/sct#243928005
* http://snomed.info/sct#86762007



CodeSystem: NHIBodySite
Id: nhi-body-site
Title: "NHI-健保事前審查-身體部位"
Description: "臺灣衛生福利部中央健康保險署「身體部位」代碼，代碼出版日期：2026-01-05；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2026-01-05"
* ^version = "1.1.1"
* ^experimental = false
* #H "頭部"
* #A "頸部"
* #F "頭頸部"
* #U "胸部"
* #N "頸椎"
* #J "胸椎"
* #K "腰椎"
* #G "胸部及上腹部"
* #C "上腹部"
* #I "腹部(含骨盆腔)"
* #P "骨盆腔"
* #E "肢部"
* #Q "臂神經血管叢"
* #M "骨骼肌肉系統"
* #V "心血管系統"
* #B "薦椎"
* #D "周邊神經"

ValueSet: NHIBodySite
Id: nhi-body-site
Title: "NHI-健保事前審查-身體部位值集"
Description: "NHI-健保事前審查-身體部位值集，代碼對應請參考[臺灣健保署身體部位代碼對應SNOMED CT](ConceptMap-nhi-sct-body-site.html)。"
* ^date = "2026-01-05"
* ^version = "1.1.1"
* ^experimental = false
* include codes from system NHIBodySite