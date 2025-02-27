{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：


1. **必須（SHALL）** 支援透過查詢參數 **[`_id`](SearchParameter-Bundle-id.html)** 查詢所有Bundle：               
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Bundle?_id=[id]`  
    `GET [base]/Bundle/[id]`

    例子：  
      (1) GET [base]/Bundle?_id=bun-1  
      (2) GET [base]/Bundle/bun-1
