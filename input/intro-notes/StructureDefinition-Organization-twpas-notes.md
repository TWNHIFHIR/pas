{% include quickstart-note.md %}

#### 建議應該支援以下查詢參數：


1. **必須（SHALL）** 支援透過查詢參數 **[`identifier`](SearchParameter-Organization-identifier.html)** 查詢所有Organization：               
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Organization?identifier=[code]`  

    例子：  
      (1) GET [base]/Organization?identifier=0101090517 
