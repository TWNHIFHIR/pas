以下為本IG使用到的所有查詢參數(SearchParameter)。

### 對外服務之API

#### 以Profile分類

##### Claim
- [<span class="bg-success">id</span>](SearchParameter-Claim-id.html)
- [<span class="bg-success">_lastUpdated</span>](SearchParameter-Claim-lastUpdated.html)
- [identifier](SearchParameter-Claim-identifier.html)
- [patient](SearchParameter-Claim-patient.html)
- [func-type](SearchParameter-Claim-func-type.html)

##### ClaimResponse
- [<span class="bg-success">_include</span>](SearchParameter-ClaimResponse-include.html)
- [created](SearchParameter-ClaimResponse-created.html)
- [disposition](SearchParameter-ClaimResponse-disposition.html)
- [request](SearchParameter-ClaimResponse-request.html)
- [adjudication-reason](SearchParameter-ClaimResponse-adjudication-reason.html)
- [requestor](SearchParameter-ClaimResponse-requestor.html)

##### Patient
- [name](SearchParameter-Patient-name.html)
- [identifier](SearchParameter-Patient-identifier.html)

##### Organization
- [identifier](SearchParameter-Organization-identifier.html)

##### Encounter
- [service-type](SearchParameter-Encounter-service-type.html)

#### 以查詢欄位分類

##### <span class="bg-success">上傳日期時間：[ClaimResponse.request](SearchParameter-ClaimResponse-request.html) + [Claim._lastUpdated](SearchParameter-Claim-lastUpdated.html)</span>
`GET [base]/ClaimResponse?request._lastUpdated={gt|lt|ge|le}[date]{&request._lastUpdated={gt|lt|ge|le}[date]}&_include=ClaimResponse:request`  
例子：  
      (1) GET [base]/ClaimResponse?request._lastUpdated=gt2026-05-04&_include=ClaimResponse:request

##### <span class="bg-success">身分證號 + 上傳日期時間：[ClaimResponse.request](SearchParameter-ClaimResponse-request.html) + [Claim.patient](SearchParameter-Claim-patient.html) + [Patient.identifier](SearchParameter-Patient-identifier.html) + [Claim._lastUpdated](SearchParameter-Claim-lastUpdated.html)</span>
`GET [base]/ClaimResponse?request.patient.identifier=[身分證號]&request._lastUpdated={gt|lt|ge|le}[date]{&request._lastUpdated={gt|lt|ge|le}[date]}&_include=ClaimResponse:request`  
例子：  
      (1) GET [base]/ClaimResponse?request.patient.identifier=A123456789&request._lastUpdated=gt2026-05-04&_include=ClaimResponse:request

##### <span class="bg-success">收件序號/案件編號：[ClaimResponse.request](SearchParameter-ClaimResponse-request.html) + [Claim.id](SearchParameter-Claim-id.html)</span>
`GET [base]/ClaimResponse?request=Claim/[收件序號/案件編號]&_include=ClaimResponse:request`  
例子：  
      (1) GET [base]/ClaimResponse?request=Claim/2025021200111484&_include=ClaimResponse:request

##### <span class="bg-success">原始檔名：[ClaimResponse.request](SearchParameter-ClaimResponse-request.html) + [Claim.identifier](SearchParameter-Claim-identifier.html)
`GET [base]/ClaimResponse?request.identifier=[原始檔名]&_include=ClaimResponse:request`  
例子：  
      (1) GET [base]/ClaimResponse?request.identifier=FHR3501200000_2016101000000001.JSON&_include=ClaimResponse:request

##### 核定註記：[ClaimResponse.adjudication-reason](SearchParameter-ClaimResponse-adjudication-reason.html)
`GET [base]/ClaimResponse?adjudication-reason=[核定註記]`  
例子：  
      (1) GET [base]/ClaimResponse?adjudication-reason=1   

##### 姓名：[ClaimResponse.request](SearchParameter-ClaimResponse-request.html) + [Claim.patient](SearchParameter-Claim-patient.html) + [Patient.name](SearchParameter-Patient-name.html)
`GET [base]/ClaimResponse?request.patient.name=[姓名]`  
例子：  
      (1) GET [base]/ClaimResponse?request.patient.name=王大明

##### 身分證號：[ClaimResponse.request](SearchParameter-ClaimResponse-request.html) + [Claim.patient](SearchParameter-Claim-patient.html) + [Patient.identifier](SearchParameter-Patient-identifier.html)
`GET [base]/ClaimResponse?request.patient.identifier=[身分證號]`  
例子：  
      (1) GET [base]/ClaimResponse?request.patient.identifier=A123456789

##### 受理編號：[ClaimResponse.request](SearchParameter-ClaimResponse-request.html) + [Claim.identifier](SearchParameter-Claim-identifier.html)
`GET [base]/ClaimResponse?request.identifier=[受理編號]`  
例子：  
      (1) GET [base]/ClaimResponse?request.identifier=20240831010109051701

##### 就醫科別：[ClaimResponse.request](SearchParameter-ClaimResponse-request.html) + [Claim.func-type](SearchParameter-Claim-func-type.html) + [Encounter.service-type](SearchParameter-Encounter-service-type.html)
`GET [base]/ClaimResponse?request.func-type.service-type=[就醫科別]`  
例子：  
      (1) GET [base]/ClaimResponse?request.func-type.service-type=AJ  
      (2) GET [base]/ClaimResponse?request.func-type.service-type=https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-consultation-department-nhi-tw|AJ

##### 受理日期：[ClaimResponse.created](SearchParameter-ClaimResponse-created.html) & [ClaimResponse.disposition](SearchParameter-ClaimResponse-disposition.html) 
`GET [base]/ClaimResponse?created={gt|lt|ge|le}[date]{&created={gt|lt|ge|le}[date]}&disposition=已受理`   
例子：  
      (1) GET [base]/ClaimResponse?created=gt2024-08-01&created=lt2024-08-24&disposition=已受理  

##### 核定日期：[ClaimResponse.created](SearchParameter-ClaimResponse-created.html) & [ClaimResponse.disposition](SearchParameter-ClaimResponse-disposition.html)  
`GET [base]/ClaimResponse?created={gt|lt|ge|le}[date]{&created={gt|lt|ge|le}[date]}&disposition=審畢結果`    
例子：  
      (1) GET [base]/ClaimResponse?created=gt2024-08-01&created=lt2024-08-24&disposition=審畢結果 

##### 醫事機構代碼：[ClaimResponse.requestor](SearchParameter-ClaimResponse-requestor.html) + [Organization.identifier](SearchParameter-Organization-identifier.html)
`GET [base]/ClaimResponse?requestor.identifier=[醫事機構代碼]`  
例子：  
      (1) GET [base]/ClaimResponse?requestor.identifier=0101090517

### 未對外服務之API

#### Bundle
- [_id](SearchParameter-Bundle-id.html)