### 癌藥事前審查之Bundle架構(Bundle Applying)
<div  style="padding-left: 10px;"> 
癌藥事前審查申請透過Bundle打包以下資料(相關對應表可以參照申請(Apply)癌藥事前審查之資料模型中的<a href="StructureDefinition-ApplyModel-mappings.html">Mappings</a>)：
<ul>
	<li>事前審查-Bundle TWPAS</li>
	<li>事前審查-Claim TWPAS</li>
	<li>醫事機構-Organization TWPAS</li>
	<li>基因檢測機構-Organization Genetic Testing TWPAS</li>
	<li>就醫科別-Encounter TWPAS</li>
	<li>病人資訊-Patient TWPAS</li>
	<li>影像報告-DiagnosticReport Image TWPAS</li>
	<li>DICOM影像-ImagingStudy TWPAS</li>
	<li>非DICOM影像-Media TWPAS</li>
	<li>癌症分期量表-Observation Cancer Stage TWPAS</li>
	<li>檢查報告-DiagnosticReport TWPAS</li>
	<li>基因資訊-Observation Diagnostic TWPAS</li>
	<li>檢驗檢查-Observation Laboratory Result</li>
	<li>病人狀態評估-Observation Patient Assessment TWPAS</li>
	<li>用藥品項-MedicationRequest Treat TWPAS</li>
	<li>放射/照光治療-Procedure TWPAS</li>
	<li>放射/照光治療總劑量-Substance TWPAS</li>
	<li>文件參照-DocumentReference</li>
	<li>治療後疾病狀態評估-Observation Treatment Assessment TWPAS</li>
	<li>事前審查品項-MedicationRequest Apply TWPAS</li>
	<li>自主審查-ClaimResponse Self Assessment TWPAS</li>
	<li>醫事人員-Practitioner TWPAS</li>
	<li>健保事前審查計畫-Coverage</li>
	<li>臺灣核心-政府機構（TW Core Organization Government）</li>
</ul>
</div>

#### Bundle架構圖
<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="apply.png" alt="Bundle_Apply架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 80%;"/>
</div>

<br>

### 癌藥事前審查回覆之Bundle架構(Bundle Response)
<div  style="padding-left: 10px;"> 
透過查詢參數搜尋癌藥事前審查狀態時，若操作語法有誤且執行失敗，將透過<a href="StructureDefinition-Operationoutcome-twpas.html">系統回應訊息-OperationOutcome TWPAS</a>回應錯誤訊息；  
若操作語法正確且執行成功，將透過<a href="StructureDefinition-Bundle-response-twpas.html">事前審查回覆-Bundle Response TWPAS</a>打包以下資料：
<ul>
	<li>事前審查結果-ClaimResponse TWPAS</li>
</ul>
</div>


#### Bundle架構圖
<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="response.png" alt="Bundle_Response架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 80%;"/>
</div>

<br>

### 圖例說明圖
<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="legend.png" alt="圖例說明" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
</div>

<br>
