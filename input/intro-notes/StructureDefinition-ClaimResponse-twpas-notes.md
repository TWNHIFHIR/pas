{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：


1. **必須（SHALL）** 支援透過查詢參數 **[`adjudication-reason`](SearchParameter-ClaimResponse-adjudication-reason.html)** 查詢所有ClaimResponse：               
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/ClaimResponse?adjudication-reason=[code]`  

    例子：  
      (1) GET [base]/ClaimResponse?adjudication-reason=1 

2. **必須（SHALL）** 支援透過查詢參數 **[`request`](SearchParameter-ClaimResponse-request.html)**.**[`patient`](SearchParameter-Claim-patient.html)**.**[`name`](SearchParameter-Patient-name.html)** 查詢所有ClaimResponse：               
    ([如何透過reference查詢](http://hl7.org/fhir/R4/search.html#reference))   
    ([如何透過string查詢](http://hl7.org/fhir/R4/search.html#string))      
    `GET [base]/ClaimResponse?request.patient.name=[姓名]`  

    例子：  
      (1) GET [base]/ClaimResponse?request.patient.name=王大明

3. **必須（SHALL）** 支援透過查詢參數 **[`request`](SearchParameter-ClaimResponse-request.html)**.**[`patient`](SearchParameter-Claim-patient.html)**.**[`identifier`](SearchParameter-Patient-identifier.html)** 查詢所有ClaimResponse：               
    ([如何透過reference查詢](http://hl7.org/fhir/R4/search.html#reference))   
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/ClaimResponse?request.patient.identifier=[code]`  

    例子：  
      (1) GET [base]/ClaimResponse?request.patient.identifier=A123456789

4. **必須（SHALL）** 支援透過查詢參數 **[`request`](SearchParameter-ClaimResponse-request.html)**.**[`identifier`](SearchParameter-Claim-identifier.html)** 查詢所有ClaimResponse：               
    ([如何透過reference查詢](http://hl7.org/fhir/R4/search.html#reference))   
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/ClaimResponse?request.identifier=[code]`  

    例子：  
      (1) GET [base]/ClaimResponse?request.identifier=20240831010109051701

5. **必須（SHALL）** 支援透過查詢參數 **[`request`](SearchParameter-ClaimResponse-request.html)**.**[`func-type`](SearchParameter-Claim-func-type.html)**.**[`service-type`](SearchParameter-Encounter-service-type.html)** 查詢所有ClaimResponse：               
    ([如何透過reference查詢](http://hl7.org/fhir/R4/search.html#reference))   
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/ClaimResponse?request.func-type.service-type={system|}[code]`  

    例子：  
      (1) GET [base]/ClaimResponse?request.func-type.service-type=AJ  
      (2) GET [base]/ClaimResponse?request.func-type.service-type=https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-consultation-department-nhi-tw|AJ

6. **必須（SHALL）** 支援透過查詢參數 **[`created`](SearchParameter-ClaimResponse-created.html)** 及 **[`disposition`](SearchParameter-ClaimResponse-disposition.html)**查詢所有ClaimResponse：               
    ([如何透過date查詢](https://hl7.org/fhir/R4/search.html#date))     
    ([如何透過string查詢](http://hl7.org/fhir/R4/search.html#string))      
    `GET [base]/ClaimResponse?created={gt|lt|ge|le}[date]{&created={gt|lt|ge|le}[date]}&disposition=[已受理|審畢結果]`  

    例子：  
      (1) GET [base]/ClaimResponse?created=gt2024-08-01&created=lt2024-08-24&disposition=審畢結果