Instance: obs-pat-nyha
InstanceOf: ObservationPatientAssessmentTWPAS
Title: "病人狀態評估-NYHA"
Description: "依據病人狀態評估-Observation Patient Assessment TWPAS Profile呈現病人狀態評估(NYHA)之範例"
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
    <p><b>病人狀態評估項目代碼</b>：Functional capacity NYHA <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org\">LOINC + SCT + NHI-健保事前審查-病人狀態評估項目值集 </a>#88020-3)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>病人狀態評估日期</b>：2024-01-01</p>
    <p><b>評估項目醫事人員身分證號</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>病人狀態評估結果</b>：class1</p>
</div>"

Instance: obs-pat-pdai
InstanceOf: ObservationPatientAssessmentTWPAS
Title: "病人狀態評估-PDAI"
Description: "依據病人狀態評估-Observation Patient Assessment TWPAS Profile呈現病人狀態評估(PDAI)之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-pat-ast#PDAI
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
    <p><b>病人狀態評估項目代碼</b>：Pemphigus Disease Area Index <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pat-ast.html\">LOINC + SCT + NHI-健保事前審查-病人狀態評估項目值集 </a>#PDAI)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>病人狀態評估日期</b>：2024-01-01</p>
    <p><b>評估項目醫事人員身分證號</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>病人狀態評估結果</b>：260</p>
</div>"

Instance: obs-pat-ctcae
InstanceOf: ObservationPatientAssessmentTWPAS
Title: "病人狀態評估-CTCAE"
Description: "依據病人狀態評估-Observation Patient Assessment TWPAS Profile呈現病人狀態評估(CTCAE)之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = http://snomed.info/sct#711434002
* effectiveDateTime = "2025-01-01"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* component[hearing-impaired].code.coding.system = "https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-pat-ast"
* component[hearing-impaired].code.coding.code = "C143528"
* component[hearing-impaired].valueString = "grade3"
* component[peripheral-motor-neuropathy].code.coding.system = "https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-pat-ast"
* component[peripheral-motor-neuropathy].code.coding.code = "C143750"
* component[peripheral-motor-neuropathy].valueString = "grade4"
* component[peripheral-sensory-neuropathy].code.coding.system = "https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-pat-ast"
* component[peripheral-sensory-neuropathy].code.coding.code = "C143752"
* component[peripheral-sensory-neuropathy].valueString = "grade5"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-pat-assessment-twpas.html\">病人狀態評估-Observation Patient Assessment TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>病人狀態評估項目代碼</b>：The common terminology criteria for adverse events(CTCAE) <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct\">LOINC + SCT + NHI-健保事前審查-病人狀態評估項目值集 </a>#711434002)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>病人狀態評估日期</b>：2025-01-01</p>
    <p><b>評估項目醫事人員身分證號</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>病人狀態評估結果</b>：</p>
    <blockquote>
        <p><b>CTCAE項目</b>：Hearing impaired <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pat-ast.html\">LOINC + SCT + NHI-健保事前審查-病人狀態評估項目值集 </a>#C143528)</span></p>
        <p><b>value</b>：grade3</span>
        </p>
    </blockquote>
    <blockquote>
        <p><b>CTCAE項目</b>：Peripheral motor neuropathy <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pat-ast.html\">LOINC + SCT + NHI-健保事前審查-病人狀態評估項目值集 </a>#C143750)</span></p>
        <p><b>value</b>：grade4</span>
        </p>
    </blockquote>
    <blockquote>
        <p><b>CTCAE項目</b>：Peripheral sensory neuropathy <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pat-ast.html\">LOINC + SCT + NHI-健保事前審查-病人狀態評估項目值集 </a>#C143752)</span></p>
        <p><b>value</b>：grade5</span>
        </p>
    </blockquote>
</div>"