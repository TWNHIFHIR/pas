Instance: obs-cancer-figo
InstanceOf: ObservationCancerStageTWPAS
Title: "癌症分期量表-FIGO"
Description: "依據癌症分期量表-Observation Cancer Stage TWPAS Profile呈現癌症分期量表FIGO之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = http://snomed.info/sct#385361009
* effectiveDateTime = "2024-05-07"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* valueCodeableConcept.coding = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nci-thesaurus#C96244
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-cancer-stage-twpas.html\">癌症分期量表-Observation Cancer Stage TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>癌症分期量表項目</b>：FIGO stage for gynaecological malignancy <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct/\">SCT + NHI-癌症分期量表項目值集</a>#385361009)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>癌症分期量表評估日期</b>：2024-05-07</p>
    <p><b>簽發癌症分期報告醫師</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>癌症分期分數或結果</b>：FIGO Stage I <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nci-thesaurus.html\">NCI Thesaurus</a>#C96244)</span></p>
</div>"

Instance: obs-cancer-cns
InstanceOf: ObservationCancerStageTWPAS
Title: "癌症分期量表-CNS"
Description: "依據癌症分期量表-Observation Cancer Stage TWPAS Profile呈現癌症分期量表WHO CNS之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = http://snomed.info/sct#277460003
* effectiveDateTime = "2024-05-07"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* valueInteger = 2
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-cancer-stage-twpas.html\">癌症分期量表-Observation Cancer Stage TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>癌症分期量表項目</b>：WHO CNS tumour grading system <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"ValueSet-cancer-stage.html/\">SCT + NCI-癌症分期量表項目值集</a>#277460003)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>癌症分期量表評估日期</b>：2024-05-07</p>
    <p><b>簽發癌症分期報告醫師</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>癌症分期分數或結果</b>：2</p>
</div>"

Instance: obs-cancer-tnm
InstanceOf: ObservationCancerStageTWPAS
Title: "癌症分期量表-TNM"
Description: "依據癌症分期量表-Observation Cancer Stage TWPAS Profile呈現癌症分期量表之TNM範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = http://snomed.info/sct#399390009
* effectiveDateTime = "2024-05-07"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* valueString = "pT4aN2bM1a"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-cancer-stage-twpas.html\">癌症分期量表-Observation Cancer Stage TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>癌症分期量表項目</b>：TNM stage grouping <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"ValueSet-cancer-stage.html/\">SCT + NCI-癌症分期量表項目值集</a>#399390009)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>癌症分期量表評估日期</b>：2024-05-07</p>
    <p><b>簽發癌症分期報告醫師</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>癌症分期分數或結果</b>：pT4aN2bM1a</p>
</div>"