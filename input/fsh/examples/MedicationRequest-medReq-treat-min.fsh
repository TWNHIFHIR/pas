Instance: medReq-treat
InstanceOf: MedicationRequestTreatTWPAS
Title: "用藥品項"
Description: "依據用藥品項-MedicationRequest Treat TWPAS Profile呈現用藥品項之範例"
Usage: #example
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#completed
* statusReason = http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason#altchoice
* intent = #order
* category = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-drug-category#nhi
* medicationCodeableConcept = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-medication#A000755151
* subject.reference = "Patient/pat-min"
* dosageInstruction.timing.code.text = "1W3D"
* dosageInstruction.doseAndRate.doseQuantity.value = 4
* dosageInstruction.doseAndRate.doseQuantity.code = #{tbl}
* dosageInstruction.doseAndRate.doseQuantity.unit = "tablets"
* dosageInstruction.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
/** dosageInstruction.doseAndRate.doseQuantity.code = #TAB
* dosageInstruction.doseAndRate.doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"*/
* dosageInstruction.timing.repeat.boundsPeriod.start = "2024-05-01"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2024-05-07"
* dosageInstruction.route = http://snomed.info/sct#26643006
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-MedicationRequest-treat-twpas.html\">用藥品項-MedicationRequest Treat TWPAS</a>
        </p>
    </div>
    <p><b>藥物使用狀態</b>：completed</p>
    <p><b>藥物處方終止原因</b>：Try another treatment first <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/codesystem-medicationrequest-status-reason.html\">MedicationRequest Status Reason Codes</a>#altchoice)</span></p>
    <p><b>意圖</b>：Order <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">( <a href=\"http://hl7.org/fhir/CodeSystem/medicationrequest-intent\">medicationRequest Intent</a>#order)</span></p>
    <p><b>自費註記</b>：健保 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-drug-category.html\">NHI-藥物類型</a>#nhi)</span></p>
    <p><b>藥品代碼</b>：ANTI-CUGH SYRUP 60ML <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-medication.html\">NHI-健保事前審查-用藥品項值集</a>#A000755151)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;&quot;</p>
    <p><b>藥品使用頻率及服用時間</b>：1W3D</p>
    <p><b>藥物每次處方劑量(單位)</b>：4 (tablets <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/valueset-ucum-common.html\">Common UCUM units</a>#{tbl})</span>)</p>
    <p><b>藥物處方起始日期</b>：2024-05-01</p>
    <p><b>藥物處方終止日期</b>：2024-05-07</p>
    <p><b>給藥途徑／作用部位</b>：Oral use <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct/\">SNOMED CT + 臺灣健保署給藥途徑值集</a>#26643006)</span></p>
</div>"