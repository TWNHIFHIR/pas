Instance: self-assessment-example
InstanceOf: ClaimResponseSelfAssessmentTWPAS
Title: "自主審查"
Description: "依據自主審查-ClaimResponse Self Assessment TWPAS Profile呈現自主審查之範例"
Usage: #example
* extension[requestor][0].valueIdentifier.system = "http://www.moi.gov.tw"
* extension[requestor][0].valueIdentifier.value = "F123456789"
* extension[requestor][1].valueIdentifier.system = "http://www.moi.gov.tw"
* extension[requestor][1].valueIdentifier.value = "A123456789"
* status = http://hl7.org/fhir/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = http://hl7.org/fhir/claim-use#preauthorization
* patient.reference = "Patient/pat-min"
* created = "2024-07-30"
* insurer.reference = "Organization/org-nhi"
* outcome = http://hl7.org/fhir/remittance-outcome#complete
* item[0].itemSequence = 1
* item[0].adjudication.category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* item[0].adjudication.reason = NHIApproveComment#1
* item[0].adjudication.value = 5
* item[1].itemSequence = 2
* item[1].adjudication.category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* item[1].adjudication.reason = NHIApproveComment#1
* item[1].adjudication.value = 4
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ClaimResponse-self-assessment-twpas.html\">自主審查-ClaimResponse Self Assessment TWPAS</a></p>
    </div>
    <p><b>狀態</b>：Active</p>
    <p><b>審查委員身分證號</b>：F123456789（http://www.moi.gov.tw）、A123456789（http://www.moi.gov.tw）</p>
    <p><b>類型</b>：<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/claim-type institutional}\">Institutional</span></p>
    <p><b>用途</b>：Preauthorization</p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>核定日期</b>：2024-07-30</p>
    <p><b>保險商</b>：<a href=\"Organization-org-nhi.html\">Organization 衛生福利部中央健康保險署</a></p>
    <p><b>處置狀態</b>：Processing Complete</p>
	<blockquote>
		<p>
			<b>對應的Claim.item.sequence</b>：1
			<br />
			<b>個別審查結果數量</b>：5
			<br />
			<b>個別醫令核定註記</b>：同意備查 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">( <a href=\"CodeSystem-nhi-approve-comment.html\">NHI-健保事前審查-核定註記</a>#1) </span>)
		</p>
	</blockquote>
	<blockquote>
		<p>
			<b>對應的Claim.item.sequence</b>：2
			<br />
			<b>個別審查結果數量</b>：4
			<br />
			<b>個別醫令核定註記</b>：同意備查 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">( <a href=\"CodeSystem-nhi-approve-comment.html\">NHI-健保事前審查-核定註記</a>#1) </span>)
		</p>
	</blockquote>
</div>"