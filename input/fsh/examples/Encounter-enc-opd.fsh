Instance: enc-opd
InstanceOf: EncounterOpdTWPAS
Title: "門診病歷"
Description: "依據門診病歷-Encounter OPD TWPAS Profile呈現門診病歷之範例"
Usage: #example
* status = http://hl7.org/fhir/encounter-status#finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* serviceType = http://snomed.info/sct#419772000
* period.start = "2025-11-11"
* serviceProvider.reference = "Organization/org-hosp-example" 
* participant.individual.reference = "Practitioner/pra-min"
/** text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Encounter-twpas.html\">就醫科別-Encounter
                TWPAS</a></p>
    </div>
    <p><b>就醫現況</b>：Planned <span style=\"background: LightGoldenRodYellow; margin:
            4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/codesystem-encounter-status.html\">EncounterStatus</a>#planned)</span></p>
    <p><b>就醫分類</b>：ambulatory  <span style=\"background: LightGoldenRodYellow; margin:
            4px; border: 1px solid khaki\"> (<a href=\"https://terminology.hl7.org/5.5.0/CodeSystem-v3-ActCode.html\">ActEncounterCode
                CT</a>#AMB)</span></p>
    <p><b>就醫科別</b>：胸腔暨重症加護 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-consultation-department-nhi-tw/\">臺灣健保署就醫科別</a>#AJ)</span></p>
</div>"*/

Instance: obs-subjective
InstanceOf: ObservationSubjectiveTWPAS
Title: "主觀描述(S)"
Description: "依據主觀描述-Observation Subjective TWPAS Profile呈現主觀描述之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* category[survey] = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = http://loinc.org#61150-9
* subject.reference = "Patient/pat-min"
* effectiveDateTime = "2025-11-11"
* encounter.reference = "Encounter/enc-opd"
* valueString = "Pain and tenderness of Right knee since yesterday."

Instance: obs-objective
InstanceOf: ObservationObjectiveTWPAS
Title: "客觀描述(O)"
Description: "依據客觀描述-Observation Objective TWPAS Profile呈現客觀描述之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* category[survey] = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = http://loinc.org#61149-1
* subject.reference = "Patient/pat-min"
* effectiveDateTime = "2025-11-11"
* encounter.reference = "Encounter/enc-opd"
* valueString = "BP 110/70 mmHg  PR 80/min  BT 38.50C"

Instance: cliImp-min
InstanceOf: ClinicalImpressionTWPAS
Title: "評估(A)"
Description: "依據評估-ClinicalImpression TWPAS Profile呈現評估之範例"
Usage: #example
* status = http://hl7.org/fhir/event-status#completed
* code = http://loinc.org#11494-2
* subject.reference = "Patient/pat-min"
* encounter.reference = "Encounter/enc-opd"
* summary = "Right knee . arthritis . active"

Instance: careplan-min
InstanceOf: CarePlanTWPAS
Title: "計畫(P)"
Description: "依據計畫-CarePlan TWPAS Profile呈現計畫之範例"
Usage: #example
* status = http://hl7.org/fhir/request-status#completed
* intent = http://hl7.org/fhir/request-intent#plan
* category[AssessPlan] = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw#assess-plan
* subject.reference = "Patient/pat-min"
* encounter.reference = "Encounter/enc-opd"
* description = "1.Arrenge Arthrocentesis of Right knee and synovial fluid analysis (routine, culture and crystal analysis) after patient consent. 2.Analgesics. 3.Bed rest with ice packing if necessary."