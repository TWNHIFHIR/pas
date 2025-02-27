Instance: enc-min
InstanceOf: EncounterTWPAS
Title: "就醫科別"
Description: "依據就醫科別-Encounter TWPAS Profile呈現就醫科別之範例"
Usage: #example
* status = http://hl7.org/fhir/encounter-status#planned
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* serviceType = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-consultation-department-nhi-tw#AJ
* text.status = #generated
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
</div>"