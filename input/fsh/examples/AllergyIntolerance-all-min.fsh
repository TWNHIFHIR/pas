Instance: all-min
InstanceOf: AllergyIntoleranceTWPAS
Title: "過敏史"
Description: "依據過敏史-AllergyIntolerance TWPAS Profile呈現過敏史之範例"
Usage: #example
* code.text = "對 A 藥物過敏，過敏反應為全身性皮疹、呼吸喘，約在服用後15分鐘發生。曾於2023年5月因感冒服用過 A 藥，出現上述過敏反應，故此後避免使用。"
* patient.reference = "Patient/pat-min"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active

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