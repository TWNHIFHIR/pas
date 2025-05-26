Instance: obs-tx-min
InstanceOf: ObservationTreatmentAssessmentTWPAS
Title: "治療後疾病狀態評估"
Description: "依據治療後疾病狀態評估-Observation Treatment Assessment TWPAS Profile呈現治療後疾病狀態評估之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-tx-ast#IWGC "International Working Group(IWG) Consensus Criteria"
* effectiveDateTime = "2024-05-07"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* valueString = "Partial remission (PR)"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-tx-assessment-twpas.html\">治療後疾病狀態評估-Observation Treatment Assessment TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>治療後疾病狀態評估項目</b>：International Working Group(IWG) Consensus Criteria<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-tx-ast.html\">NHI-治療後疾病狀態評估項目值集</a>#IWGC)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>治療後疾病狀態評估日期</b>：2024-01-01</p>
    <p><b>治療後疾病狀態評估結果</b>：Partial remission (PR)</p>
</div>"

/*Instance: obs-tx-min-IREC
InstanceOf: ObservationTreatmentAssessmentTWPAS
Title: "治療後疾病狀態評估-IREC"
Description: "依據治療後疾病狀態評估-Observation Treatment Assessment TWPAS Profile呈現治療後疾病狀態評估之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-tx-ast#IREC
* effectiveDateTime = "2024-05-07"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* valueString = "iUPD"

Instance: obs-tx-min-ICLL
InstanceOf: ObservationTreatmentAssessmentTWPAS
Title: "治療後疾病狀態評估-ICLL"
Description: "依據治療後疾病狀態評估-Observation Treatment Assessment TWPAS Profile呈現治療後疾病狀態評估之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-tx-ast#ICLL
* effectiveDateTime = "2024-05-07"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* valueString = "SD"

Instance: obs-tx-min-MREC
InstanceOf: ObservationTreatmentAssessmentTWPAS
Title: "治療後疾病狀態評估-MREC"
Description: "依據治療後疾病狀態評估-Observation Treatment Assessment TWPAS Profile呈現治療後疾病狀態評估之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-tx-ast#MREC
* effectiveDateTime = "2024-05-07"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* valueString = "PDD"

Instance: obs-tx-min-REC1
InstanceOf: ObservationTreatmentAssessmentTWPAS
Title: "治療後疾病狀態評估-REC1"
Description: "依據治療後疾病狀態評估-Observation Treatment Assessment TWPAS Profile呈現治療後疾病狀態評估之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-tx-ast#REC1
* effectiveDateTime = "2024-05-07"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* valueString = "inevaluable"

Instance: obs-tx-min-IWGC
InstanceOf: ObservationTreatmentAssessmentTWPAS
Title: "治療後疾病狀態評估-IWGC"
Description: "依據治療後疾病狀態評估-Observation Treatment Assessment TWPAS Profile呈現治療後疾病狀態評估之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = https://fhir-ig.nhi.org.tw/pas/CodeSystem/nhi-tx-ast#IWGC
* effectiveDateTime = "2024-05-07"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* valueString = "Not evaluable"*/