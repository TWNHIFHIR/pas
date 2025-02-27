Instance: imaStu-min
InstanceOf: ImagingStudyTWPAS
Title: "影像"
Description: "依據DICOM影像-ImagingStudy TWPAS Profile呈現影像之範例"
Usage: #example
* identifier[study-uid].value = "urn:oid:2.16.886.2102.54.4546465747.465465465"
* identifier[study-uid].system = "urn:dicom:uid"
* status = http://hl7.org/fhir/imagingstudy-status#registered
* subject.reference = "Patient/pat-min"
* series.uid = "2.16.886.2102.54.4546465747.465465466"
* series.modality = http://dicom.nema.org/resources/ontology/DCM#CT
* series.bodySite = http://snomed.info/sct#774007 "Head and neck structure"
* series.instance[0].uid = "2.25.88017001449189502323411118737039844241"
* series.instance[=].sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.2
* series.instance[+].uid = "2.25.88017001449189502323411118737039844242"
* series.instance[=].sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.2
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-ImagingStudy-twpas.html\">DICOM影像-ImagingStudy TWPAS</a></p>
    </div>
    <p><b>狀態</b>：registered</p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>Study UID</b>：urn:oid:2.16.886.2102.54.4546465747.465465465</p>
    <p><b>Series Instance UID</b>：2.16.886.2102.54.4546465747.465465466</p>
    <p><b>SOP Instance UIDs</b>：2.25.88017001449189502323411118737039844241, 2.25.88017001449189502323411118737039844242</p>
    <p><b>影像檢查的身體部位</b>：Head and neck structure<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://snomed.info/sct\">SNOMED CT</a>#774007)</span></p>
    <p><b>儀器</b>：CT Image Storage<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_D.html\">DICOM</a>#CT)</span></p>
</div>"