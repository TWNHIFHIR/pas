Instance: pro-phototherapy
InstanceOf: ProcedurePhototherapyTWPAS
Title: "照光治療"
Description: "依據照光治療-Procedure Phototherapy TWPAS Profile呈現照光治療之範例"
Usage: #example
* status = http://hl7.org/fhir/event-status#completed
* code.coding = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-phototherapy#nb-UVB "窄頻UVB(nb-UVB)"
* subject.reference = "Patient/pat-min"
* performedPeriod.start = "2024-01-01"
* performedPeriod.end = "2024-03-31"
* usedReference.reference = "Substance/sub-phototherapy"
* report.reference = "DocumentReference/doc-phototherapy-min"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Procedure-phototherapy-twpas.html\">照光治療-Procedure Phototherapy TWPAS</a></p>
    </div>
    <p><b>照光治療狀態</b>：completed</p>
    <p><b>照光治療種類</b>：窄頻UVB(nb-UVB) <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">
            (<a href=\"CodeSystem-nhi-phototherapy.html\">NHI-健保事前審查-照光治療種類</a>#nb-UVB)</span>
    </p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>照光治療起始日期</b>：2024-01-01</p>
    <p><b>照光治療終止日期</b>：2024-03-31</p>
    <p><b>照光治療總次數</b>：<a href=\"Substance-sub-phototherapy.html\">Substance/sub-phototherapy</a> 24</p>
    <p><b>照光治療紀錄</b>：<a href=\"DocumentReference-doc-phototherapy-min.html\">DocumentReference/doc-phototherapy-min</a> file://ptReport01.pdf</p>
</div>"


Instance: sub-phototherapy
InstanceOf: SubstancePhototherapyTWPAS
Title: "照光治療總次數"
Description: "依據照光治療總次數-Substance Phototherapy TWPAS Profile呈現照光治療總次數之範例"
Usage: #example
* code.coding = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-phototherapy#nb-UVB
* ingredient.quantity.numerator.value = 24
* ingredient.quantity.denominator.value = 1
* ingredient.substanceCodeableConcept = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-phototherapy#nb-UVB
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Substance-phototherapy-twpas.html\">照光治療總次數-Substance Phototherapy TWPAS</a></p>
    </div>
    <p><b>照光治療項目</b>：窄頻UVB(nb-UVB) <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">
            (<a href=\"CodeSystem-nhi-phototherapy.html\">NHI-健保事前審查-照光治療種類</a>#nb-UVB)</span></p>
    <p><b>照光治療總次數</b>：24</p>
</div>"