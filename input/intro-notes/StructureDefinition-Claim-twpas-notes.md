{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：


1. **必須（SHALL）** 支援透過查詢參數 **[`identifier`](SearchParameter-Claim-identifier.html)** 查詢所有Claim：               
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Claim?identifier=[code]`  

    例子：  
      (1) GET [base]/Claim?identifier=20240831010109051701 

2. **必須（SHALL）** 支援透過查詢參數 **[`patient`](SearchParameter-Claim-patient.html)** 查詢所有Claim：               
    ([如何透過reference查詢](http://hl7.org/fhir/R4/search.html#reference))   
    `GET [base]/Claim?patient={Type/}[id]`  

    例子：  
      (1) GET [base]/Claim?patient=Patient/pat-min
      (2) GET [base]/Claim?patient=pat-min

3. **必須（SHALL）** 支援透過查詢參數 **[`func-type`](SearchParameter-Claim-func-type.html)** 查詢所有Claim：               
    ([如何透過reference查詢](http://hl7.org/fhir/R4/search.html#reference))   
    `GET [base]/Claim?func-type={Type/}[id]`  

    例子：  
      (1) GET [base]/Claim?func-type=Encounter/enc-min
      (2) GET [base]/Claim?func-type=enc-min
