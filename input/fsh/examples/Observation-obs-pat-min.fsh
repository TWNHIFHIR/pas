Instance: obs-pat-nyha
InstanceOf: ObservationPatientAssessmentTWPAS
Title: "病人狀態評估-NYHA"
Description: "依據病人狀態評估-Observation Patient Assessment TWPAS Profile呈現病人狀態評估之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = http://loinc.org#88020-3
* effectiveDateTime = "2024-01-01"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
//* valueCodeableConcept.coding[ECOG] = http://loinc.org#LA9622-7
* valueString = "class1"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-pat-assessment-twpas.html\">病人狀態評估-Observation Patient Assessment TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>病人狀態評估項目代碼</b>：Functional capacity NYHA <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org\">LOINC + NHI-病人狀態評估項目值集 </a>#88020-3)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>病人狀態評估日期</b>：2024-01-01</p>
    <p><b>評估項目醫事人員身分證號</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>病人狀態評估結果</b>：class1</p>
</div>"

Instance: obs-pat-pdai
InstanceOf: ObservationPatientAssessmentTWPAS
Title: "病人狀態評估-PDAI"
Description: "依據病人狀態評估-Observation Patient Assessment TWPAS Profile呈現病人狀態評估之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-pat-ast#PDAI
* effectiveDateTime = "2024-01-01"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* valueInteger = 260
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-pat-assessment-twpas.html\">病人狀態評估-Observation Patient Assessment TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>病人狀態評估項目代碼</b>：Pemphigus Disease Area Index <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pat-ast.html\">LOINC + NHI-病人狀態評估項目值集 </a>#PDAI)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>病人狀態評估日期</b>：2024-01-01</p>
    <p><b>評估項目醫事人員身分證號</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>病人狀態評估結果</b>：260</p>
</div>"