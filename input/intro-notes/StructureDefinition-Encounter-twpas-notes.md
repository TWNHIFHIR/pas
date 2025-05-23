{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：


1. **必須（SHALL）** 支援透過查詢參數 **[`service-type`](SearchParameter-Encounter-service-type.html)** 查詢所有Encounter：               
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Encounter?service-type={system|}[code]`  

    例子：  
      (1) GET [base]/Encounter?service-type=AJ  
      (2) GET [base]/Encounter?service-type=https://fhir-ig.nhi.org.tw/twcore/CodeSystem/medical-consultation-department-nhi-tw|AJ
