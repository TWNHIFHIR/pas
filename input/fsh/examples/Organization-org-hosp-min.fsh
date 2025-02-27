Instance: org-hosp-example
InstanceOf: OrganizationTWPAS
Title: "醫事機構"
Description: "依據機構-Organization TWPAS Profile呈現醫事機構之範例"
Usage: #example
* identifier.use = #official
* identifier.system = "https://twcore.mohw.gov.tw/ig/pas/CodeSystem/organization-identifier-tw"
* identifier.value = "0101090517"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov
* name = "臺北市立聯合醫院"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <h3>
    <b>醫事機構</b>
  </h3>
  <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
    <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Organization-twpas.html\">機構-Organization TWPAS</a></p>
  </div>
  <p>
    <b>機構名稱</b>：臺北市立聯合醫院
  </p>
  <p>
    <b>識別碼型別</b>：Provider number<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">（ <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#PRN） </span>   <br/>
    <b>機構代碼（official）</b>：0101090517 (https://twcore.mohw.gov.tw/ig/pas/CodeSystem/organization-identifier-tw)
  </p>
  <p>
    <b>機構種類</b>：Healthcare Provider <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\">( <a href=\"http://hl7.org/fhir/R4/codesystem-organization-type.html\">OrganizationType</a>#prov) </span>
  </p>
</div>"

Instance: org-gene-example
InstanceOf: OrganizationGeneticTestingTWPAS
Title: "基因檢測機構"
Description: "依據基因檢測機構-Organization Genetic Testing TWPAS Profile呈現基因檢測機構之範例"
Usage: #example
* identifier.system = "https://dep.mohw.gov.tw"
* identifier.value = "2023LDTB0002"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <h3>
    <b>基因檢測機構</b>
  </h3>
  <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
    <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Organization-genetic-testing-twpas.html\">基因檢測機構-Organization Genetic Testing TWPAS</a></p>
  </div>
  <p>
    <b>機構代碼</b>：2023LDTB0002 (https://dep.mohw.gov.tw)
  </p>
</div>"