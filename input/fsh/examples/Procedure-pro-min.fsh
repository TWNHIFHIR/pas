Instance: pro-min
InstanceOf: ProcedureTWPAS
Title: "放射/照光治療"
Description: "依據放射/照光治療-Procedure TWPAS Profile呈現放射/照光治療之範例"
Usage: #example
* status = http://hl7.org/fhir/event-status#completed
* code.coding = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw#D7Y08ZZ
* subject.reference = "Patient/pat-min"
* performedDateTime = "2024-05-06T09:00:00.000Z"
* usedReference.reference = "Substance/sub-min"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Procedure-twpas.html\">放射/照光治療-Procedure TWPAS</a></p>
    </div>
    <p><b>放射/照光治療狀態</b>：completed</p>
    <p><b>放射/照光治療項目</b>：骨髓高溫療法 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">
            (<a href=\"https://twcore.mohw.gov.tw/ig/twcore/0.3.2/CodeSystem-icd-10-pcs-2023-tw.html\">臺灣2023年中文版ICD-10-PCS</a>#D7Y08ZZ)</span>
    </p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>放射/照光治療日期</b>：2024-05-06 09:00:00+0000</p>
    <p><b>放射/照光治療總劑量</b>：<a href=\"Substance-sub-min.html\">Substance/sub-min</a> 5000 mg</p>
</div>"


Instance: sub-min
InstanceOf: SubstanceTWPAS
Title: "放射/照光治療總劑量"
Description: "依據放射/照光治療總劑量-Substance TWPAS Profile呈現放射/照光治療之範例"
Usage: #example
* code.coding = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw#D7Y08ZZ
* ingredient.quantity.numerator.value = 5000
* ingredient.quantity.numerator.code = #mg
* ingredient.quantity.numerator.system = "http://unitsofmeasure.org"
* ingredient.quantity.denominator.value = 0
* ingredient.substanceCodeableConcept = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw#D7Y08ZZ
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Substance-twpas.html\">放射/照光治療總劑量-Substance TWPAS</a></p>
    </div>
    <p><b>放射/照光治療項目</b>：骨髓高溫療法 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">
            (<a href=\"https://twcore.mohw.gov.tw/ig/twcore/0.3.2/CodeSystem-icd-10-pcs-2023-tw.html\">臺灣2023年中文版ICD-10-PCS</a>#D7Y08ZZ)</span></p>
    <p><b>放射/照光治療總劑量(單位)</b>：5000 (/mg)</p>
</div>"