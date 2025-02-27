Instance: error-example
InstanceOf: OperationOutcomeTWPAS
Title: "系統回應錯誤訊息"
Description: "依據系統回應訊息-OperationOutcome TWPAS Profile呈現使用錯誤語法查詢系統時之回應範例"
Usage: #example
* issue.severity = #error
* issue.code = http://hl7.org/fhir/issue-type#processing
* issue.details = http://terminology.hl7.org/CodeSystem/operation-outcome#MSG_PARAM_INVALID
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <h3><b>系統回應錯誤訊息-錯誤查詢參數</b></h3>
    <p><b>問題嚴重性</b>：Error <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">（ <a href=\"http://hl7.org/fhir/issue-severity\">IssueSeverity</a>#error</span></p>
    <p><b>問題種類</b>：Processing Failure <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">（ <a href=\"http://hl7.org/fhir/issue-type\">IssueType</a>#processing)</span></p>
    <p><b>訊息種類</b>：Parameter \"%s\" content is invalid <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">（ <a href=\"https://hl7.org/fhir/R4/codesystem-operation-outcome.html\">OperationOutcomeCodes</a>#operation-outcome-MSG_PARAM_INVALID）</span></p>
</div>"