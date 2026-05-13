{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：


1. **必須（SHALL）** 支援透過查詢參數 **[`id`](SearchParameter-Claim-id.html)** 查詢所有Claim：               
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Claim?_id=[id]`  
    `GET [base]/Claim/[id]`

    例子：  
      (1) GET [base]/Claim?_id=bun-1  
      (2) GET [base]/Claim/bun-1

2. **必須（SHALL）** 支援透過查詢參數 **[`identifier`](SearchParameter-Claim-identifier.html)** 查詢所有Claim：               
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Claim?identifier=[code]`  

    例子：  
      (1) GET [base]/Claim?identifier=20240831010109051701 

3. **必須（SHALL）** 支援透過查詢參數 **[`patient`](SearchParameter-Claim-patient.html)** 查詢所有Claim：               
    ([如何透過reference查詢](http://hl7.org/fhir/R4/search.html#reference))   
    `GET [base]/Claim?patient={Type/}[id]`  

    例子：  
      (1) GET [base]/Claim?patient=Patient/pat-min  
      (2) GET [base]/Claim?patient=pat-min

4. **必須（SHALL）** 支援透過查詢參數 **[`func-type`](SearchParameter-Claim-func-type.html)** 查詢所有Claim：               
    ([如何透過reference查詢](http://hl7.org/fhir/R4/search.html#reference))   
    `GET [base]/Claim?func-type={Type/}[id]`  

    例子：  
      (1) GET [base]/Claim?func-type=Encounter/enc-min  
      (2) GET [base]/Claim?func-type=enc-min

5. **必須（SHALL）** 支援透過查詢參數 **[`_lastUpdated`](SearchParameter-Claim-lastUpdated.html)** 查詢所有Claim：               
    ([如何透過date查詢](https://hl7.org/fhir/R4/search.html#date))     
    `GET [base]/Claim?_lastUpdated={gt|lt|ge|le}[date]{&_lastUpdated={gt|lt|ge|le}[date]`  

    例子：  
      (1) GET [base]/Claim?_lastUpdated=gt2026-05-04T14:17

