Instance: con-diagnosis
InstanceOf: ConditionTWPAS
Title: "診斷"
Description: "依據診斷-Condition TWPAS Profile呈現診斷之範例"
Usage: #example
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category.coding = http://loinc.org#29548-5
* code.coding = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#M17.11
* subject.reference = "Patient/pat-min"
* encounter.reference = "Encounter/enc-opd"
/* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Coverage-twpas.html\">健保事前審查計畫-Coverage
                TWPAS</a></p>
    </div>
    <p><b>狀態</b>：active</p>
    <p><b>受益人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>保險人</b>：<a href=\"Organization-org-nhi.html\">Organization/org-nhi</a> &quot;衛生福利部中央健康保險署&quot;</p>
</div>"*/