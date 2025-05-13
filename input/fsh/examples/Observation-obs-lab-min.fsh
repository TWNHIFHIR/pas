Instance: obs-lab-min
InstanceOf: ObservationLaboratoryResultTWPAS
Title: "檢驗檢查-單項"
Description: "依據檢驗檢查-Observation Laboratory Result TWPAS Profile呈現單項檢驗檢查之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = http://loinc.org#777-3
* effectiveDateTime = "2024-01-01"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* valueQuantity.value = 5.1
* valueQuantity.unit = "mmol/l"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H
* interpretation.text = "高"
* referenceRange.low = 2.9 'mmol/L' "mmol/l"
* referenceRange.high = 4.9 'mmol/L' "mmol/l"
* category = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-supporting-info-type#tests
* derivedFrom.reference = "DocumentReference/doc-test-min"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-laboratory-result-twpas.html\">檢驗檢查-Observation Laboratory Result TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>類型</b>：檢驗(查)<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-supporting-info-type.html/\">NHI-補充資訊類別值集</a>#tests)</span></p>
    <p><b>檢驗(查)名稱</b>：Platelets [#/volume] in Blood by Automated count <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#777-3)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>檢驗(查)報告日期</b>：2024-01-01</p>
    <p><b>簽發檢驗(查)報告醫事人員身分證號</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>檢驗(查)結果</b>：5.1 mmol/l</p>
    <p><b>檢驗(查)結果判讀</b>：高，High <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation/\">ObservationInterpretationCodes  </a>#H)</span></p>
    <p><b>檢驗(查)結果之參考範圍下限</b>：2.9 mmol/L</p>
    <p><b>檢驗(查)結果之參考範圍上限</b>：4.9 mmol/L</p>
    <p><b>檢驗(查)附件</b>：<a href=\"DocumentReference-doc-test-min.html\">DocumentReference/doc-test-min</a></p>
</div>"

Instance: obs-lab-cbc
InstanceOf: ObservationLaboratoryResultTWPAS
Title: "檢驗檢查-套組(全套血液檢查)"
Description: "依據檢驗檢查-Observation Laboratory Result TWPAS Profile呈現套組檢驗檢查之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* category = https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-supporting-info-type#tests
* code.coding = http://loinc.org#58410-2
* component[0].code.coding = http://loinc.org#6690-2
* component[=].valueQuantity.value = 3.6
* component[=].valueQuantity.unit = "10*3/uL"
* component[=].referenceRange.low.value = 3.9
* component[=].referenceRange.low.unit = "10*3/uL"
* component[=].referenceRange.high.value = 10.6
* component[=].referenceRange.high.unit = "10*3/uL"
* component[+].code.coding = http://loinc.org#789-8
* component[=].valueQuantity.value = 4.7
* component[=].valueQuantity.unit = "10*6/uL"
* component[=].referenceRange.low.value = 4.5
* component[=].referenceRange.low.unit = "10*6/uL"
* component[=].referenceRange.high.value = 5.9
* component[=].referenceRange.high.unit = "10*6/uL"
* component[+].code.coding = http://loinc.org#718-7
* component[=].valueQuantity.value = 14
* component[=].valueQuantity.unit = "g/dL"
* component[=].referenceRange.low.value = 13.5
* component[=].referenceRange.low.unit = "g/dL"
* component[=].referenceRange.high.value = 17.5
* component[=].referenceRange.high.unit = "g/dL"
* component[+].code.coding = http://loinc.org#4544-3
* component[=].valueQuantity.value = 45
* component[=].valueQuantity.unit = "%"
* component[=].referenceRange.low.value = 41
* component[=].referenceRange.low.unit = "%"
* component[=].referenceRange.high.value = 53
* component[=].referenceRange.high.unit = "%"
* component[+].code.coding = http://loinc.org#777-3
* component[=].valueQuantity.value = 101
* component[=].valueQuantity.unit = "10*3/uL"
* component[=].referenceRange.low.value = 150
* component[=].referenceRange.low.unit = "10*3/uL"
* component[=].referenceRange.high.value = 400
* component[=].referenceRange.high.unit = "10*3/uL"
* effectiveDateTime = "2024-01-01"
* performer.reference = "Practitioner/pra-min"
* subject.reference = "Patient/pat-min"
* derivedFrom.reference = "DocumentReference/doc-test-min"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-laboratory-result-twpas.html\">檢驗檢查-Observation Laboratory Result TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>類型</b>：檢驗(查)<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-supporting-info-type.html/\">NHI-補充資訊類別值集</a>#tests)</span></p>
    <p><b>套組代碼</b>：CBC panel - Blood by Automated count <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#58410-2)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>檢驗(查)報告日期</b>：2024-01-01</p>
    <p><b>簽發檢驗(查)報告醫事人員身分證號</b>：<a href=\"Practitioner-pra-min.html\">Practitioner/pra-min</a></p>
    <p><b>檢驗(查)附件</b>：<a href=\"DocumentReference-doc-test-min.html\">DocumentReference/doc-test-min</a></p>
	<blockquote>
		<p>
			<b>檢驗(查)名稱</b>：Leukocytes [#/volume] in Blood by Automated count <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#6690-2)</span>
			<br />
			<b>檢驗(查)結果</b>：3.6 × 10^3/μL
			<br />
			<b>檢驗(查)結果之參考範圍下限</b>：3.9 × 10^3/μL
			<br />
			<b>檢驗(查)結果之參考範圍上限</b>：10.6 × 10^3/μL
		</p>
	</blockquote>
	<blockquote>
		<p>
			<b>檢驗(查)名稱</b>：Erythrocytes [#/volume] in Blood by Automated count <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#789-8)</span>
			<br />
			<b>檢驗(查)結果</b>：4.7 × 10^6/μL
			<br />
			<b>檢驗(查)結果之參考範圍下限</b>：4.5 × 10^3/μL
			<br />
			<b>檢驗(查)結果之參考範圍上限</b>：5.9 × 10^3/μL
		</p>
	</blockquote>
	<blockquote>
		<p>
			<b>檢驗(查)名稱</b>：Hemoglobin [Mass/volume] in Blood <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#718-7)</span>
			<br />
			<b>檢驗(查)結果</b>：14 g/dL
			<br />
			<b>檢驗(查)結果之參考範圍下限</b>：13.5 g/dL
			<br />
			<b>檢驗(查)結果之參考範圍上限</b>：17.5 g/dL
		</p>
	</blockquote>
	<blockquote>
		<p>
			<b>檢驗(查)名稱</b>：Hematocrit [Volume Fraction] of Blood by Automated count <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#4544-3)</span>
			<br />
			<b>檢驗(查)結果</b>：45 %
			<br />
			<b>檢驗(查)結果之參考範圍下限</b>：41 %
			<br />
			<b>檢驗(查)結果之參考範圍上限</b>：53 %
		</p>
	</blockquote>
	<blockquote>
		<p>
			<b>檢驗(查)名稱</b>：Platelets [#/volume] in Blood by Automated count <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINCCodes</a>#777-3)</span>
			<br />
			<b>檢驗(查)結果</b>：101 × 10^3/μL
			<br />
			<b>檢驗(查)結果之參考範圍下限</b>：150 × 10^3/μL
			<br />
			<b>檢驗(查)結果之參考範圍上限</b>：400 × 10^3/μL
		</p>
	</blockquote>
</div>"