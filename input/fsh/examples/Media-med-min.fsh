Instance: med-min
InstanceOf: MediaTWPAS
Title: "非DICOM影像"
Description: "依據非DICOM影像-Media TWPAS Profile呈現非DICOM影像之範例"
Usage: #example
* status = http://hl7.org/fhir/event-status#completed
* subject.reference = "Patient/pat-min"
* content.contentType = #image/jpeg
* content.url  = "file://US01.jpg"
* bodySite = http://snomed.info/sct#774007 "Head and neck structure"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Media-twpas.html\">非DICOM影像-Media TWPAS</a></p>
    </div>
    <p><b>狀態</b>：completed</p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>影像檢查的身體部位</b>：Head and neck structure<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct\">SNOMED CT</a>#774007)</span></p>
    <p><b>非DICOM影像</b>：file://US01.jpg（#image/jpeg）</p>
</div>"