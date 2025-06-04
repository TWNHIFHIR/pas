Instance: bun-3
InstanceOf: BundleTWPAS
Title: "事前審查-申復、有共病"
Description: "依據事前審查-Bundle TWPAS Profile呈現癌藥事前審查之範例"
Usage: #example
* type = http://hl7.org/fhir/bundle-type#collection

* entry[0].fullUrl = "https://nhicore.nhi.gov.tw/pas/Claim/cla-3"
* entry[0].resource = cla-3

* entry[1].fullUrl = "https://nhicore.nhi.gov.tw/pas/Encounter/enc-min"
* entry[1].resource = enc-min

* entry[2].fullUrl = "https://nhicore.nhi.gov.tw/pas/Patient/pat-min"
* entry[2].resource = pat-min

* entry[3].fullUrl = "https://nhicore.nhi.gov.tw/pas/Practitioner/pra-min"
* entry[3].resource = pra-min

* entry[4].fullUrl = "https://nhicore.nhi.gov.tw/pas/Organization/org-hosp-example"
* entry[4].resource = org-hosp-example

* entry[5].fullUrl = "https://nhicore.nhi.gov.tw/pas/DiagnosticReport/diaRep-ima-min"
* entry[5].resource = diaRep-ima-min

* entry[6].fullUrl = "https://nhicore.nhi.gov.tw/pas/ImagingStudy/imaStu-min"
* entry[6].resource = imaStu-min

* entry[7].fullUrl = "https://nhicore.nhi.gov.tw/pas/Media/med-min"
* entry[7].resource = med-min

* entry[8].fullUrl = "https://nhicore.nhi.gov.tw/pas/Observation/obs-cancer-figo"
* entry[8].resource = obs-cancer-figo

* entry[9].fullUrl = "https://nhicore.nhi.gov.tw/pas/DiagnosticReport/diaRep-min"
* entry[9].resource = diaRep-min

* entry[10].fullUrl = "https://nhicore.nhi.gov.tw/pas/Observation/obs-diagnostic-min"
* entry[10].resource = obs-diagnostic-min

* entry[11].fullUrl = "https://nhicore.nhi.gov.tw/pas/Specimen/spe-min"
* entry[11].resource = spe-min

* entry[12].fullUrl = "https://nhicore.nhi.gov.tw/pas/DocumentReference/doc-gene-min"
* entry[12].resource = doc-gene-min

* entry[13].fullUrl = "https://nhicore.nhi.gov.tw/pas/Observation/obs-lab-min"
* entry[13].resource = obs-lab-min

* entry[14].fullUrl = "https://nhicore.nhi.gov.tw/pas/DocumentReference/doc-test-min"
* entry[14].resource = doc-test-min

* entry[15].fullUrl = "https://nhicore.nhi.gov.tw/pas/Observation/obs-pat-nyha"
* entry[15].resource = obs-pat-nyha

* entry[16].fullUrl = "https://nhicore.nhi.gov.tw/pas/MedicationRequest/medReq-treat"
* entry[16].resource = medReq-treat

* entry[17].fullUrl = "https://nhicore.nhi.gov.tw/pas/Procedure/pro-min"
* entry[17].resource = pro-min

* entry[18].fullUrl = "https://nhicore.nhi.gov.tw/pas/Substance/sub-min"
* entry[18].resource = sub-min

* entry[19].fullUrl = "https://nhicore.nhi.gov.tw/pas/DocumentReference/doc-careplan-min"
* entry[19].resource = doc-careplan-min

* entry[20].fullUrl = "https://nhicore.nhi.gov.tw/pas/Observation/obs-tx-min"
* entry[20].resource = obs-tx-min

* entry[21].fullUrl = "https://nhicore.nhi.gov.tw/pas/MedicationRequest/medReq-apply-2"
* entry[21].resource = medReq-apply-2

* entry[22].fullUrl = "https://nhicore.nhi.gov.tw/pas/Coverage/cov-min"
* entry[22].resource = cov-min

* entry[23].fullUrl = "https://nhicore.nhi.gov.tw/pas/Organization/org-nhi"
* entry[23].resource = org-nhi

* entry[24].fullUrl = "https://nhicore.nhi.gov.tw/pas/Organization/org-gene-example"
* entry[24].resource = org-gene-example

* entry[25].fullUrl = "https://nhicore.nhi.gov.tw/pas/DocumentReference/doc-medicalRecord-min"
* entry[25].resource = doc-medicalRecord-min