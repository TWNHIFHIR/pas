Instance: diaRep-min
InstanceOf: DiagnosticReportTWPAS
Title: "檢查報告"
Description: "依據檢查報告-DiagnosticReport TWPAS Profile呈現檢查報告之範例"
Usage: #example
* status = http://hl7.org/fhir/diagnostic-report-status#final
* code.coding = http://loinc.org#66117-3
* code.text = "Prostate"
* category = NHIPASSupportingInfoType#examinationReport
* subject.reference = "Patient/pat-min"
* effectiveDateTime = "2024-05-07"
* performer.reference = "Practitioner/pra-min"
* conclusion = "細胞檢查報告結果"
* presentedForm[0].contentType = #application/pdf
* presentedForm[=].title = "PathologyReport01"
* presentedForm[=].url =  "file://PathologyReport01.pdf"
* presentedForm[+].contentType = #application/pdf
* presentedForm[=].title = "PathologyReport02"
* presentedForm[=].url =  "file://PathologyReport02.pdf"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-DiagnosticReport-twpas.html\">檢查報告-DiagnosticReport TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>報告類型</b>：Prostate Pathology biopsy report <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org\">EncounterStatus</a>#66117-3)</span></p>
    <p><b>檢體種類</b>：Prostate</p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>報告日期</b>：2024-05-07</p>
    <p><b>檢查報告醫師</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>報告結果-文數字</b>：細胞檢查報告結果</p>
    <blockquote>
        <p><b>檢查報告名稱</b>：PathologyReport01</p>
        <p><b>檢查報告</b>：file://PathologyReport01.pdf</p>
    </blockquote>
    <blockquote>
        <p><b>檢查報告名稱</b>：PathologyReport02</p>
        <p><b>檢查報告</b>：file://PathologyReport02.pdf</p>
    </blockquote>
</div>"