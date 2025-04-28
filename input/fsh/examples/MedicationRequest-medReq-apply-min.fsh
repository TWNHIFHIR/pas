Instance: medReq-apply
InstanceOf: MedicationRequestApplyTWPAS
Title: "事前審查品項-多用法"
Description: "依據事前審查品項-MedicationRequest Apply TWPAS Profile呈現事前審查品項之範例"
Usage: #example
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#on-hold
* intent = #plan
* medicationCodeableConcept = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-medication#BC27730100
* subject.reference = "Patient/pat-min"
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2024-01-01"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2024-02-11"
* dosageInstruction[=].timing.repeat.count = 42
* dosageInstruction[=].timing.code[0].coding[0] = http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation#QD
* dosageInstruction[=].timing.code[=].coding[+] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#AC1H
* dosageInstruction[=].doseAndRate.doseQuantity.value = 75
* dosageInstruction[=].doseAndRate.doseQuantity.code = #mg/m2
* dosageInstruction[=].doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[=].route = http://snomed.info/sct#26643006

* dosageInstruction[1].timing.repeat.boundsPeriod.start = "2024-02-12"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2024-03-10"
* dosageInstruction[=].timing.repeat.count = 1
* dosageInstruction[=].timing.code[0].coding[0] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD1
* dosageInstruction[=].timing.code[=].coding[+] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD2
* dosageInstruction[=].timing.code[=].coding[+] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD3
* dosageInstruction[=].timing.code[=].coding[+] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD4
* dosageInstruction[=].timing.code[=].coding[+] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD5
* dosageInstruction[=].timing.code[=].coding[+] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#AC1H
* dosageInstruction[=].doseAndRate.doseQuantity.value = 150
* dosageInstruction[=].doseAndRate.doseQuantity.code = #mg/m2
* dosageInstruction[=].doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[=].route = http://snomed.info/sct#26643006

//* category[orderType] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-order-type#4 "癌症用藥"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MedicationRequest-apply-twpas.html\">事前審查品項-MedicationRequest Apply TWPAS</a></p>
    </div>
    <p><b>狀態</b>：On Hold</p>
    <p><b>目的</b>：Plan</p>
    <p><b>事前審查品項代碼</b>：Alunbrig film-coated tablets 30mgL<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-medication\">NHI-健保事前審查-用藥品項代碼值集</a>#BC27730100)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <blockquote>
        <p><b>事前審查藥物預定處方起始日期</b>：2024-01-01</p>
        <p><b>事前審查藥物預定處方終止日期</b>：2024-02-11</p>
        <p><b>事前審查藥品使用頻率及服用時間</b>：Every day at institution specified times.、飯前1小時使用<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"ValueSet-medication-frequency-hl7-nhi.html\">HL7 TimingAbbreviation + 臺灣健保署藥品使用頻率值集</a>#BIW、#AC1H)</span></p>
        <p><b>事前審查藥品每次處方劑量</b>：75 mg/m2</p>
        <p><b>事前審查藥品處方頻次(cycles)</b>：42</p>
        <p><b>給藥途徑／作用部位</b>：Oral use <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct/\">SNOMED CT + 臺灣健保署給藥途徑值集</a>#26643006)</span></p>
    </blockquote>
    <blockquote>
        <p><b>事前審查藥物預定處方起始日期</b>：2024-02-12</p>
        <p><b>事前審查藥物預定處方終止日期</b>：2024-03-10</p>
        <p><b>事前審查藥品使用頻率及服用時間</b>：每4週的第1天、每4週的第2天、每4週的第3天、每4週的第4天、每4週的第5天、飯前1小時使用<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"ValueSet-medication-frequency-hl7-nhi.html\">HL7 TimingAbbreviation + 臺灣健保署藥品使用頻率值集</a>#Q4WD1、#Q4WD2、#Q4WD3、#Q4WD4、#Q4WD5、#AC1H)</span></p>
        <p><b>事前審查藥品每次處方劑量</b>：150 mg/m2</p>
        <p><b>事前審查藥品處方頻次(cycles)</b>：1</p>
        <p><b>給藥途徑／作用部位</b>：Oral use <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct/\">SNOMED CT + 臺灣健保署給藥途徑值集</a>#26643006)</span></p>
    </blockquote>
</div>"

Instance: medReq-apply-2
InstanceOf: MedicationRequestApplyTWPAS
Title: "事前審查品項-給付適應症特定代碼"
Description: "依據事前審查品項-MedicationRequest Apply TWPAS Profile呈現特定事前審查品項代碼之範例"
Usage: #example
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#on-hold
* intent = #plan
* medicationCodeableConcept = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-medication#KC011162B5
* subject.reference = "Patient/pat-min"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2024-03-11"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2024-07-28"
* dosageInstruction.timing.repeat.count = 1
* dosageInstruction.timing.code[0].coding[0] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD1
* dosageInstruction.timing.code[=].coding[+] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD2
* dosageInstruction.timing.code[=].coding[+] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD3
* dosageInstruction.timing.code[=].coding[+] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD4
* dosageInstruction.timing.code[=].coding[+] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#Q4WD5
* dosageInstruction.timing.code[=].coding[+] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/medication-frequency-nhi-tw#AC1H
* dosageInstruction.route = http://snomed.info/sct#26643006
* dosageInstruction.doseAndRate.doseQuantity.value = 200
* dosageInstruction.doseAndRate.doseQuantity.code = #mg/m2
* dosageInstruction.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"

* dispenseRequest.quantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
//* category[orderType] = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-order-type#4 "癌症用藥"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MedicationRequest-apply-twpas.html\">事前審查品項-MedicationRequest Apply TWPAS</a></p>
    </div>
    <p><b>狀態</b>：On Hold</p>
    <p><b>目的</b>：Plan</p>
    <p><b>事前審查品項代碼</b>：Herzuma Inj. 440mg <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-medication\">NHI-健保事前審查-用藥品項代碼值集</a>#KC011162B5)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>事前審查藥物預定處方起始日期</b>：2024-03-11</p>
    <p><b>事前審查藥物預定處方終止日期</b>：2024-07-28</p>
    <p><b>事前審查藥品使用頻率及服用時間</b>：每4週的第1天、每4週的第2天、每4週的第3天、每4週的第4天、每4週的第5天、飯前1小時使用<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"ValueSet-medication-frequency-hl7-nhi.html\">HL7 TimingAbbreviation + 臺灣健保署藥品使用頻率值集</a>#Q4WD1、#Q4WD2、#Q4WD3、#Q4WD4、#Q4WD5、#AC1H)</span></p>
    <p><b>事前審查藥品每次處方劑量</b>：200 mg/m2</p>
    <p><b>事前審查藥品處方頻次(cycles)</b>：1</p>
    <p><b>給藥途徑／作用部位</b>：Oral use <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct/\">SNOMED CT + 臺灣健保署給藥途徑值集</a>#26643006)</span></p>
</div>"