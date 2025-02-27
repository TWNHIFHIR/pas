Instance: cov-min
InstanceOf: CoverageTWPAS
Title: "健保事前審查計畫"
Description: "依據健保事前審查計畫-Coverage TWPAS Profile呈現健保事前審查計畫之範例"
Usage: #example
* status = http://hl7.org/fhir/fm-status#active
* beneficiary.reference = "Patient/pat-min"
* payor.reference = "Organization/org-nhi"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile：<a href=\"StructureDefinition-Coverage-twpas.html\">健保事前審查計畫-Coverage
                TWPAS</a></p>
    </div>
    <p><b>狀態</b>：active</p>
    <p><b>受益人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>保險人</b>：<a href=\"Organization-org-nhi.html\">Organization/org-nhi</a> &quot;衛生福利部中央健康保險署&quot;</p>
</div>"

Instance: org-nhi
InstanceOf: TWCoreOrganizationGovt
Title: "衛生福利部中央健康保險署"
Description: "依據臺灣核心-政府機構（TW Core Organization Government）Profile呈現衛生福利部中央健康保險署"
Usage: #example
* identifier.use = #official
* identifier.system = "https://oid.nat.gov.tw/"
* identifier.value = "A21030000I"
* identifier.type = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/v2-0203#GOI
* type =  http://terminology.hl7.org/CodeSystem/organization-type#govt
* name = "衛生福利部中央健康保險署"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
    <p style=\"margin-bottom: 0px\">Profile: <a href=\"https://twcore.mohw.gov.tw/ig/twcore/0.3.2/StructureDefinition-Organization-govt-twcore.html\">臺灣核心-政府機構（TW Core Organization Government）</a></p>
  </div>
  <p>
    <b>機構名稱</b>：衛生福利部中央健康保險署
  </p>
  <p>
    <b>識別碼型別</b>：Government Organization Identifier<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">（ <a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/v2-0203\">臺灣識別碼類型值集</a>#GOI） </span>  <br/>
    <b>機關代號（official）</b>：A21030000I (https://oid.nat.gov.tw/)
  </p>
  <p>
    <b>機構種類</b>：Government <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">( <a href=\"http://hl7.org/fhir/R4/codesystem-organization-type.html\">OrganizationType</a>#govt) </span>
  </p>
</div>"