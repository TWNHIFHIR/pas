Instance: pra-min
InstanceOf: PractitionerTWPAS
Title: "醫事人員"
Description: "依據醫事人員-Practitioner TWPAS Profile呈現醫事人員之範例"
Usage: #example
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "F123456789"
* identifier[medicalLicenseNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[medicalLicenseNumber].type.coding.code = #MD
* identifier[medicalLicenseNumber].system = "https://dep.mohw.gov.tw/DOMA"
* identifier[medicalLicenseNumber].value = "KP00017"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Practitioner-twpas.html\">醫事人員-Practitioner TWPAS</a></p>
    </div>
	<blockquote>
		<p><b>識別碼型別</b>：National Person Identifier <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">Identifier Type Codes</a>#NNxxx） </span></p>
		<p><b>身分證字號（official）</b>：F123456789 （http://www.moi.gov.tw）</p>
	</blockquote>
	<blockquote>
		<p><b>識別碼型別</b>：Medical License number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">Identifier Type Codes</a>#MD） </span></p>
		<p><b>醫師證號</b>：KP00017 （https://dep.mohw.gov.tw/DOMA）</p>
	</blockquote>
</div>"