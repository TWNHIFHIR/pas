{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：


1. **必須（SHALL）** 支援透過查詢參數 **[`name`](SearchParameter-Patient-name.html)** 查詢所有Patient：               
    ([如何透過string查詢](http://hl7.org/fhir/R4/search.html#string))  
    `GET [base]/Patient?name=[string]`  

    例子：  
      (1) GET [base]/Patient?name=王大明 

2. **必須（SHALL）** 支援透過查詢參數 **[`identifier`](SearchParameter-Patient-identifier.html)** 查詢所有Patient：               
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Patient?identifier=[code]`  

    例子：  
      (1) GET [base]/Patient?identifier=A123456789 
