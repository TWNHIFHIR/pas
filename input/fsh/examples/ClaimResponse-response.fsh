Instance: claim-response-example
InstanceOf: ClaimResponseTWPAS
Title: "事前審查回覆"
Description: "依據事前審查回覆-ClaimResponse TWPAS Profile呈現事前審查回覆之範例"
Usage: #example
* status = http://hl7.org/fhir/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = http://hl7.org/fhir/claim-use#preauthorization
* patient.reference = "Patient/pat-min"
* request.reference = "Claim/cla-1"
* created = "2024-07-30"
* insurer.reference = "Organization/org-nhi"
* outcome = http://hl7.org/fhir/remittance-outcome#complete
* item.itemSequence = 1
* item.adjudication.category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* item.adjudication.reason = NHIApproveComment#1
* item.adjudication.value = 2

* item.detail[0].detailSequence = 1
* item.detail[=].adjudication.category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* item.detail[=].adjudication.reason = NHIApproveComment#1
* item.detail[+].detailSequence = 2
* item.detail[=].adjudication.category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* item.detail[=].adjudication.reason = NHIApproveComment#1
* disposition = "審畢結果"


* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ClaimResponse-twpas.html\">事前審查結果-ClaimResponse TWPAS</a></p>
    </div>
    <p><b>狀態</b>：Active</p>
    <p><b>類型</b>：<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/claim-type institutional}\">Institutional</span></p>
    <p><b>用途</b>：Preauthorization</p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>核定日期</b>：2024-07-30</p>
    <p><b>關聯的事前審查</b>：<a href=\"Claim-cla-1.html\">Claim/cla-1</a></p>
    <p><b>保險商</b>：<a href=\"Organization-org-nhi.html\">Organization 衛生福利部中央健康保險署</a></p>
    <p><b>處置狀態</b>：Processing Complete</p>
    <p><b>案件受理狀態</b>：審畢結果</p>
    <blockquote>
        <p><b>item</b></p>
        <p><b>itemSequence</b>：1</p>
        <h3>受理審查案件核定註記</h3>
        <table class=\"grid\">
            <tr>
                <td style=\"display: none\">-</td>
                <td><b>類型</b></td>
                <td><b>受理審查案件核定註記</b></td>
                <td><b>核定數量</b></td>
            </tr>
            <tr>
                <td style=\"display: none\">*</td>
                <td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/adjudication submitted}\">Submitted Amount</span></td>
                <td><span title=\"Codes:{https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-approve-comment 1}\">同意備查</span></td>
                <td>2</td>
            </tr>
        </table><h3>受理審查案件核定註記</h3>
        <table class=\"grid\">
            <tr>
                <td style=\"display: none\">-</td>
                <td><b>類型</b></td>
                <td><b>Claim.item.sequence</b></td>
                <td><b>個別醫令核定註記</b></td>
            </tr>
            <tr>
                <td style=\"display: none\">*</td>
                <td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/adjudication submitted}\">Submitted Amount</span></td>
                <td>1</td>
                <td><span title=\"Codes:{https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-approve-comment 1}\">同意備查</span></td>
            </tr>
            <tr>
                <td style=\"display: none\">*</td>
                <td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/adjudication submitted}\">Submitted Amount</span></td>
                <td>2</td>
                <td><span title=\"Codes:{https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-approve-comment 1}\">同意備查</span></td>
            </tr>
        </table>
    </blockquote>
</div>"