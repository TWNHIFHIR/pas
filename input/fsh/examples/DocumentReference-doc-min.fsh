Instance: doc-gene-min
InstanceOf: DocumentReferenceTWPAS
Title: "基因報告"
Description: "依據文件參照-DocumentReference TWPAS Profile呈現基因報告之範例"
Usage: #example
* category = NHIPDFType#gene
* status = http://hl7.org/fhir/document-reference-status#current
* subject.reference = "Patient/pat-min"
* content.attachment.contentType = #application/pdf
* content.attachment.url =  "file://GenReport01.pdf"
* content.attachment.title = "GenReport01"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DocumentReference-twpas.html\">文件參照-DocumentReference TWPAS</a></p>
    </div>
    <p><b>狀態</b>：current</p>
    <p><b>報告類型</b>：基因報告 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pdf-type.html\">NHI-文件類型</a>#gene)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>基因報告(application/pdf)</b>：file://GenReport01.pdf</p>
    <p><b>基因報告名稱</b>：GenReport01</p>
</div>"

Instance: doc-careplan-min
InstanceOf: DocumentReferenceTWPAS
Title: "治療計畫文件"
Description: "依據文件參照-DocumentReference TWPAS Profile呈現治療計畫文件之範例"
Usage: #example
* category = NHIPDFType#careplan
* status = http://hl7.org/fhir/document-reference-status#current
* subject.reference = "Patient/pat-min"
* content.attachment.contentType = #application/pdf
* content.attachment.title = "免疫檢查點抑制劑治療計畫"
* content.attachment.url =  "file://CarePlanReport01.pdf"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DocumentReference-twpas.html\">文件參照-DocumentReference TWPAS</a></p>
    </div>
    <p><b>狀態</b>：current</p>
    <p><b>報告類型</b>：治療計畫文件 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pdf-type.html\">NHI-文件類型</a>#careplan)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>治療計畫文件名稱</b>：免疫檢查點抑制劑治療計畫</p>
    <p><b>治療計畫文件 (application/pdf)</b>：file://CarePlanReport01.pdf</p>
</div>"

Instance: doc-test-min
InstanceOf: DocumentReferenceTWPAS
Title: "檢驗(查)附件"
Description: "依據文件參照-DocumentReference TWPAS Profile呈現檢驗(查)附件之範例"
Usage: #example
* category = NHIPDFType#test
* status = http://hl7.org/fhir/document-reference-status#current
* subject.reference = "Patient/pat-min"
* content[0].attachment.contentType = #application/pdf
* content[=].attachment.url =  "file://TestReport01.pdf"
* content[=].attachment.title = "TestReport01"
* content[+].attachment.contentType = #application/pdf
* content[=].attachment.url =  "file://TestReport02.pdf"
* content[=].attachment.title = "TestReport02"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DocumentReference-twpas.html\">文件參照-DocumentReference TWPAS</a></p>
    </div>
    <p><b>狀態</b>：current</p>
    <p><b>報告類型</b>：檢驗(查)附件 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pdf-type.html\">NHI-文件類型</a>#test)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <blockquote>
        <p><b>檢驗(查)附件 (application/pdf)</b>：file://TestReport01.pdf</p>
        <p><b>檢驗(查)附件名稱</b>：TestReport01</p>
    </blockquote>
    <blockquote>
        <p><b>檢驗(查)附件 (application/pdf)</b>：file://TestReport02.pdf</p>
        <p><b>檢驗(查)附件名稱</b>：TestReport02</p>
    </blockquote>
</div>"

Instance: doc-medicalRecord-min
InstanceOf: DocumentReferenceTWPAS
Title: "病歷資料"
Description: "依據文件參照-DocumentReference TWPAS Profile呈現病歷資料之範例"
Usage: #example
* category = NHIPDFType#medrec
* status = http://hl7.org/fhir/document-reference-status#current
* subject.reference = "Patient/pat-min"
* content.attachment.contentType = #application/pdf
* content.attachment.url =  "file://王大明病歷.pdf"
* content.attachment.title = "王大明病歷"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4;
        border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DocumentReference-twpas.html\">文件參照-DocumentReference TWPAS</a></p>
    </div>
    <p><b>狀態</b>：current</p>
    <p><b>報告類型</b>：病歷資料 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-pdf-type.html\">NHI-文件類型</a>#medrec)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>病歷資料 (application/pdf)</b>：file://王大明病歷.pdf</p>
    <p><b>病歷資料名稱</b>：王大明病歷</p>
</div>"