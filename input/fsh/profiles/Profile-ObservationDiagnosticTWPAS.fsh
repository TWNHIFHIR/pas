Profile:        ObservationDiagnosticTWPAS
Parent:         Observation
Id:             Observation-diagnostic-twpas
Title:          "基因資訊-Observation Diagnostic TWPAS"
Description:    "此基因資訊-Observation Diagnostic TWPAS Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現癌藥事前審查之基因資訊"
/* extension ^slicing.discriminator.type = #pattern
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    http://hl7.org/fhir/StructureDefinition/bodySite named body-structure 0..1*/

* effective[x] only dateTime
* code.coding 1..1
* code.coding.code 1..1 MS
* code.coding.system = "http://loinc.org"
* code.coding.code = #69548-6
* category  1..1
* category.coding  1..1
* category.coding.system = "https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-supporting-info-type"
* category.coding.code = #geneInfo
* category ^short = "因FHIR設計而需必填"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code.coding.system"
* component ^slicing.rules = #closed
* component contains
    gene-test-code 0..* MS /*and
    coding-change-type 0..* MS and
    chromosome-identifier 0..1 MS and
    exact-start-end 0..1 MS*/
* component[gene-test-code] ^short = "基因檢測代碼"
* component[gene-test-code].code MS
* component[gene-test-code].code from GeneTestCode (extensible)
* component[gene-test-code].code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* component[gene-test-code].code.coding 1..1
* component[gene-test-code].code.coding.system 1..1
* component[gene-test-code].code.coding.system = "http://loinc.org"
* component[gene-test-code].value[x] 1.. MS
* component[gene-test-code].interpretation 0..1 MS
* component[gene-test-code].interpretation from DNAChangeType (extensible)
* component[gene-test-code].interpretation obeys pas-1
* component[gene-test-code].interpretation.coding.code 1..1
* component[gene-test-code].interpretation ^short = "基因突變類型"
* component[gene-test-code].interpretation ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* component[gene-test-code].interpretation ^definition = "Type of DNA change observed. Convenience property for variants with exact breakpoints, required otherwise."
* component[gene-test-code].interpretation.coding.code ^short = "LA6692-3: Deletion | LA6686-5: Duplication | LA6687-3: Insertion | LA6688-1: Insertion/Deletion | LA6689-9: Inversion | LA6690-7: Substitution | 101397-8: Copy number variation analysis Sequencing Doc (Bld/Tiss) | 81695-9: MSI Ca spec-Imp | 94077-5: TMB Tumor-Imp | O55-2: Delins"
* component[gene-test-code].interpretation.text ^short = "基因突變類型。若無合適代碼，可使用此欄位以文字呈現。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* component[gene-test-code].interpretation.text ^condition = "pas-1"
* component[gene-test-code].interpretation.coding ^condition = "pas-1"

//* component[coding-change-type].value[x] ^binding.description = "Concepts in sequence ontology under SO:0002072"

/* component[chromosome-identifier].code = http://loinc.org#48000-4
* component[chromosome-identifier].code ^short = "48000-4"
* component[chromosome-identifier] ^short = "基因位點 Chromosome Identifier (待確認)"
* component[chromosome-identifier] ^definition = "An indicator, enumerated in humans by numbers 1-22, X, and Y, representing the chromosome on which the variant is located."
* component[chromosome-identifier].value[x] only CodeableConcept
* component[chromosome-identifier].value[x] 1..1
* component[chromosome-identifier].value[x] ^short = "Chromosome 1 | Chromosome 2 | ... | Chromosome 22 | Chromosome X | Chromosome Y"
* component[chromosome-identifier].value[x] from http://loinc.org/vs/LL2938-0 (required)

* component[exact-start-end].code = http://loinc.org#81254-5
* component[exact-start-end].code ^short = "81254-5"
* component[exact-start-end] ^short = "基因位點 Exact Start-End (待確認)"
* component[exact-start-end] ^definition = "The exact integer-based genomic coordinates of the start and end of the variant region."
* component[exact-start-end].value[x] only Range
* component[exact-start-end].value[x] ^short = "Range in question. 'High' can be omitted for single nucleotide variants."
*/
* value[x] 1..1 MS
* value[x] only string or CodeableConcept or Quantity or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
/* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept from http://loinc.org/vs/LL1971-2*/
* performer 1..1 MS
* performer only Reference(OrganizationGeneticTestingTWPAS)
* subject only Reference(PatientTWPAS)
* subject 1.. MS
* specimen 1..1 MS
* specimen only Reference(SpecimenTWPAS)
* method 1..1 MS
* method from http://loinc.org/vs/LL4048-6 (extensible)
* method ^short = "Sequencing | SNP array | PCR | Computational analysis | ..."
* effective[x] 1..1
* effective[x] only dateTime
* effectiveDateTime MS
* derivedFrom 1..1 MS
* derivedFrom only Reference(DocumentReferenceTWPAS)
* interpretation 0..1 MS

* value[x] ^short = "基因檢測分析結果。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* interpretation ^short = "基因臨床判讀結果，醫師判讀結果。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"

* performer ^short = "基因檢測機構，衛福部公告名冊或LDTs核定函上之「案件編號」。"
//* extension[body-structure] ^short = "基因檢測檢體部位"
* specimen ^short = "基因檢測檢體類型"
* derivedFrom ^short = "基因報告"
* method ^short = "基因檢測方法"
* effectiveDateTime ^short = "基因檢測日期"