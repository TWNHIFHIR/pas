Instance: obs-blood-group
InstanceOf: ObservationBloodGroupTWPAS
Title: "血型"
Description: "依據血型-Observation Blood Group TWPAS Profile呈現血型之範例"
Usage: #example
* status = http://hl7.org/fhir/observation-status#final
* code.coding = http://loinc.org#882-1
* category = https://nhicore.nhi.gov.tw/pas/CodeSystem/nhi-supporting-info-type#bloodgroup
* effectiveDateTime = "2024-05-07"
* subject.reference = "Patient/pat-min"
* valueCodeableConcept = http://snomed.info/sct#112144000
/* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Observation-diagnostic-twpas.html\">基因資訊-Observation Diagnostic TWPAS</a></p>
    </div>
    <p><b>狀態</b>：final</p>
    <p><b>類型</b>：基因資訊<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-supporting-info-type.html/\">NHI-補充資訊類別值集</a>#geneInfo)</span></p>
    <p><b>code</b>：Genetic variant assessment<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINC</a>#69548-6)</span></p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
    <p><b>基因檢測日期</b>：2024-05-07</p>
	<blockquote>
		<p>
			<b>基因檢測代碼</b>：KRAS gene mutations found [Identifier] in Blood or Tissue by Molecular genetics method Nominal <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://loinc.org/\">LOINC-基因檢測代碼值集</a>#21702-6） </span>
			<br />
            <b>基因檢測實際結果</b>：KRAS 12 mutation: Not Detected, KRAS 13 mutation: Not Detected, KRAS 61 mutation: Not Detected
			<br />
			<b>基因突變類型</b>：Not detected <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://loinc.org/\">LOINC-基因突變類型值集</a>#LA11883-8） </span>
		</p>
	</blockquote>
    <p><b>基因檢測機構</b>：<a href=\"Organization-org-gene-example.html\">Organization 2023LDTB0002</a></p>
    <p><b>基因檢測分析結果</b>：基因檢測報告結果</p>
    <p><b>基因臨床判讀結果</b>：Positive <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation/\">ObservationInterpretationCodes  </a>#POS)</span></p>
    <p><b>基因檢測方法</b>：PCR <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://loinc.org/\">LOINC Answer List LL4048-6  </a>#LA26418-6)</span></p>
    <p><b>基因檢測檢體類型</b>：<a href=\"Specimen-spe-min.html\">Specimen/spe-min</a></p>
    <p><b>基因報告</b>：<a href=\"DocumentReference-doc-gene-min.html\">DocumentReference/doc-gene-min</a></p>
</div>"*/