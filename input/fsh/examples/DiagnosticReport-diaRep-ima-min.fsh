Instance: diaRep-ima-min
InstanceOf: DiagnosticReportImageTWPAS
Title: "影像報告"
Description: "依據影像報告-DiagnosticReport Image TWPAS Profile呈現影像報告之範例"
Usage: #example
* status = http://hl7.org/fhir/diagnostic-report-status#final
* code.coding[TW2023ICD10PCS] = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw#B34JZZ3
* subject.reference = "Patient/pat-min"
* effectiveDateTime = "2024-05-07"
* performer.reference = "Practitioner/pra-min"
* imagingStudy.reference = "ImagingStudy/imaStu-min"
* conclusion = "影像報告結果"
* presentedForm[0].contentType = #application/pdf
* presentedForm[=].title = "影像報告"
* presentedForm[=].url =  "file://ImagingDiagnosticReport01.pdf"
* presentedForm[+].contentType = #application/pdf
* presentedForm[=].title = "影像報告"
* presentedForm[=].url =  "file://ImagingDiagnosticReport02.pdf"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DiagnosticReport-image-twpas.html\">影像報告-DiagnosticReport Image TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>影像報告</b>：左上肢動脈血管內超音波 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw\">臺灣健保署2023年中文版ICD-10-PCS值集</a>#B34JZZ3)</span></p>
    <p><b>影像報告日期</b>：2024-05-07</p>
    <p><b>簽發影像報告醫師</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>影像檢查的身體部位／DICOM影像</b>：<a href=\"ImagingStudy-imaStu-min.html\">ImagingStudy/imaStu-min</a></p>
    <p><b>影像報告結果</b>：影像報告結果</p>
    <blockquote>
        <p><b>影像報告名稱</b>：影像報告01</p>
        <p><b>影像報告</b>：file://ImagingDiagnosticReport01.pdf</p>
    </blockquote>
    <blockquote>
        <p><b>影像報告名稱</b>：影像報告02</p>
        <p><b>影像報告</b>：file://ImagingDiagnosticReport02.pdf</p>
    </blockquote>
</div>"