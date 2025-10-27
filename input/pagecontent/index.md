<div class="bg-danger" style="ol { counter-reset: item } li { display: block } li:before { content: counters（item, ">
<p><b>請注意</b>：您目前所看到的IG為持續建置(ci-build)版，主要依據實作者及健保署端的業務需求即時調整V1.0.8版內容，因而會比健保署的IG版本V1.0.8(https://nhicore.nhi.gov.tw/pas/)內容新，僅供未來想以最新版本規格進行資料上傳的人員參考，下次更新版本號時間預計為114年11月7日，屆時才會調整相應版本的健保署FHIR伺服器規格。<br/>
<br/>
<b>醫院實作時請以V1.0.8為主進行實例驗證，目前健保署端的伺服器採用V1.0.8版規格。</b></p>
</div>
<br/>

<div class="bg-warning" style="ol { counter-reset: item } li { display: block } li:before { content: counters（item, ">
因考量實作需求，於2025/10/27異動以下內容：
    <ol>  
        <li>更新代碼：<a href="CodeSystem-nhi-medication.html">CodeSystem: NHI-健保事前審查-用藥品項</a></li>
        <!-- <li>更新代碼：<a href="CodeSystem-organization-identifier-tw.html">CodeSystem: NHI-健保事前審查-特約醫事機構</a></li> -->
        <li>修改<a href="ValueSet-dna-change-type.html">ValueSet: LOINC-健保事前審查-基因突變類型值集</a>：新增代碼<code>95123-6</code>。</li>
        <li>修改<a href="CodeSystem-medication-frequency-nhi-tw.html">CodeSystem: NHI-健保事前審查-藥品使用頻率</a>：新增代碼<code>HS</code>(睡前一次)、<code>QDHS</code>(每日一次睡前使用)。</li>
        <li>修改<a href="CodeSystem-nhi-tmhb-type.html">CodeSystem: NHI-健保事前審查-申請案件類別</a>：原「自主審查報備」(<code>3</code>)調整名稱為「自主審查」。</li>
        <li>修改<a href="StructureDefinition-ClaimResponse-self-assessment-twpas.html">Profile: 自主審查-ClaimResponse Self Assessment TWPAS</a>：
            <ol>
                <li>原「自主審查報備」調整名稱為「自主審查」。</li>
                <li>原「核定數量」(<code>item.adjudication.value</code>)調整名稱為「審查結果數量」。</li>
                <li>新增「審查委員身分證號」(<code>extension[requestor]</code>)欄位。</li>
            </ol>
        </li>
        <li>修改<a href="StructureDefinition-Bundle-twpas.html">Profile: 事前審查-Bundle TWPAS</a>：
            <ol>
                <li>修改Constraints: claimResponse-1：若申請案件類別(Claim.priority)為自主審查(#3)時，須填寫核定日期(ClaimResponse.created)、審查結果數量(ClaimResponse.item.adjudication.value)、核定註記(ClaimResponse.item.adjudication.reason)及審查委員身分證號(extension[requestor])。</li>
                <li>新增Constraints: claimResponse-2：若申請案件類別(Claim.priority)為自主審查(#3)，且國際疾病分類代碼(Claim.diagnosisCodeableConcept)前三碼為C18、C19、C20、C21、C22、C33、C34、C50、C61(五癌)時，則續用註記(Claim.item.modifier:continuation)須為申請再次使用(#2)。</li>
            </ol>
        </li>
        <li>修改<a href="StructureDefinition-Observation-pat-assessment-twpas.html">Profile: 病人狀態評估-Observation Patient Assessment TWPAS</a>：
            <ol>
                <li>「病人狀態評估項目代碼」(<code>code</code>)綁定強度調整為「required」。</li>
                <li>修改Constraints: pat-ast-value：新增「若病人狀態評估項目代碼(code)為MPNSAFTSS，結果值(valueInteger)須填寫0~5其中的值；若病人狀態評估項目代碼(code)為MPN10，結果值(valueInteger)須填寫0~5其中的值；若病人狀態評估項目代碼(code)為711434002，結果值(component.valueString)須填寫grade1/grade2/grade3/grade4/grade5其中一項。」。</li>
            </ol>
        </li>
        <li>修改<a href="CodeSystem-nhi-pat-ast.html">CodeSystem: NHI-健保事前審查-病人狀態評估項目</a>：新增代碼<code>MPNSAFTSS</code>、<code>MPN10</code>、<code>C143528</code>、<code>C143750</code>、<code>C143752</code>。</li>
        <li>修改<a href="ValueSet-pat-ast.html">ValueSet: LOINC + SCT + NHI-健保事前審查-病人狀態評估項目值集</a>：新增代碼<code>711434002</code>、<code>MPNSAFTSS</code>、<code>MPN10</code>。</li>
    </ol>
    請留意這些異動，以避免影響您的實作。
</div>
<br/>

<div class="bg-success" style="ol { counter-reset: item } li { display: block } li:before { content: counters（item, ">
<p><b>相關資訊可參考衛生福利部中央健康保險署的<a href="https://www.nhi.gov.tw/ch/np-3787-1.html" target="_blank">癌藥事前審查以電子病歷申請專區</a>。</b></p>
</div>

### 專案介紹
<div  style="padding-left: 10px;"> 
<p>臺灣健保癌症用藥事前審查實作指引(Taiwan NHI Cancer Prior Authorization Support Implementation Guide，TWPAS IG)採用HL7® FHIR® standard（Fast Healthcare Interoperability Resources）IG建置方法，在<a href="http://hl7.org/fhir/R4/">FHIR R4.0.1</a>之標準基礎上，繼承TW Core IG V0.3.2 (2024-12-12)，進一步定義適用於「癌藥事前審查」資料需求的Resources（類似資料表）、其中的資料項目（意即欄位）、基數（意即0..1、0..*、1..1或1..*）及資料類型（文字、日期時間、代碼等）等。</p>
</div>

### 專案背景
<div  style="padding-left: 10px;"> 
<p>衛生福利部中央健康保險署規劃事前審查癌症用藥上傳機制。為扣合賴總統於健康台灣之「國家癌症防治計畫」政策，本署刻正規劃NGS申報資料收載、癌症重大傷病申請、癌藥事前審查申請及癌症個案療效追蹤等癌症醫療資訊之數位轉型，期透過資料有效互通，達成以病人為中心之完整照護。</p>
</div>

<div  style="padding-left: 10px;"> 
<p>申請案件類別包含「一般事前審查申請」、「自主審查」、「緊急報備」，於<a href="StructureDefinition-Claim-twpas.html">Claim</a>.priority呈現。</p>
<p>申報類別包含「送核」、「送核補件」、「申復」、「爭議審議 」、「申復補件 」，於<a href="StructureDefinition-Claim-twpas.html">Claim</a>.subType呈現。
送核、送核補件、申復及申復補件之作業流程皆相同，依該個案是首次送審或不同意後再次送審等之狀態進行選擇不同的申報類別，以做為行政程序之判斷。</p>
</div>

### 專案範圍

#### 使用案例(Use Case)
<div  style="padding-left: 10px;"> 
<p>本專案之主要實作者為醫院，醫院透過事前審查系統建立癌藥事前審查資料，透過共通傳輸平台批次上傳癌藥事前審查相關文件，並送至衛生福利部中央健康保險署審核。</p>
<img class="figure-img img-responsive img-rounded center-block" src="usecase.png" alt="IG use case" style="display: block;margin-left: auto;margin-right: auto;width: 45%;"/>
</div>

#### 循序圖
送核、送核補件、申復及申復補件之作業流程皆相同，依該個案是首次送審或不同意後再次送審等之狀態進行選擇不同的申請類別，以做為行政程序之判斷。

送核、送核補件、申復及申復補件作業流程如下：
1. 醫院開發癌藥事前審查系統產生癌藥事前審查報告（Bundle TWPAS）
2. 醫院將已產生之事前審查相關文件上傳至健保署
3. 若資料符合格式，健保署回覆上傳成功訊息，由醫院查詢上傳結果
4. 若資料不符合格式，健保署回覆上傳失敗訊息，由醫院查詢上傳結果
5. 資料上傳成功後，審核醫師審核報告通過，由醫院查詢審核結果
6. 資料上傳成功後，審核醫師審核報告未通過，由醫院查詢審核結果
<!--For CI-Build> <div style="justify-content: center;display: flex;">{% include index.svg %}</div> <-->
<img class="figure-img img-responsive img-rounded center-block" src="sequence.png" alt="IG use case" style="display: block;margin-left: auto;margin-right: auto;width: 45%;"/>


### 如何閱讀這個實作指引(IG)
<div  style="padding-left: 10px;">
<p>TWPAS IG之網站架構圖如下圖所示。各功能說明如下：</p>

<img class="figure-img img-responsive img-rounded center-block" src="structure.png" alt="IG架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
<div style="clear:both;"></div>

<ul>
	<li><strong><a href="index.html">應用說明</a></strong>：TWPAS IG介紹及背景說明。</li>
	<li><strong><a href="vision.html">視覺化邏輯模型</a></strong>：TWPAS IG邏輯模型架構視覺化圖。</li>
	<li><strong><a href="artifacts.html">規範文件</a></strong>
	<ul>
		<li><strong><a href="capabilitystatements.html">能力聲明</a>
			</strong>：應用TWPAS IG於建置業務目的使用的FHIR Server時，該FHIR Server必須及建議應該支援的資料存取功能。
		</li>
		<li><strong><a href="searchparameters.html">查詢參數</a></strong>：查詢FHIR Server的Profiles時，針對各Profiles可使用的查詢參數。</li>
		<li><strong><a href="models.html">邏輯模型</a>
			</strong>：TWPAS IG的所有邏輯模型(Logical Models)，邏輯模型會定義相應情境下使用的所有資料欄位。為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目(element)。
		</li>
    	<li><strong><a href="profiles-and-extensions.html">FHIR Profiles及Extensions</a></strong>：
        	<ul>
          		<li>TWPAS IG的所有Profiles之定義與範例及Extensions。</li>
          		<li>各資料項目不同實作強制程度的Terminology。</li>
          		<li>各資料項目的限制（Constraints）。</li>
          		<li>查詢依據TWPAS IG實作之FHIR Server的特定Profiles時，可使用的查詢參數。</li>
          		<li>有哪些Profiles具有查詢參數以及Server必須支援哪些必要的查詢參數功能。</li>
        	</ul>
      	</li>
		<li><strong><a href="terminologies.html">專門術語</a>
			</strong>：TWPAS IG所使用的專門術語，包括代碼系統（Code Systems）、值集（Value Sets）及概念對應（Concept Map）。
		</li>
	</ul>
	</li>
	<li><strong><a href="examples.html">範例</a></strong>：符合TWPAS IG所定義Profiles之範例檔。</li>
	<li><strong><a href="downloads.html">結構定義與範例檔下載</a></strong>：實作者若不偏好使用FHIR RESTful API驗證資料是否符合Profiles，可直接下載所需的格式驗證檔，包括XML、JSON及Turtle三種格式，亦可於此下載完整範例檔。</li>
	<li><strong><a href="security.html">安全性</a></strong>：主要說明採用TWPAS IG網站進行實作時，有關資料存取授權的作法。</li>
	<li><strong><a href="validate.html">驗證教學</a></strong>：如何驗證實作檔是否遵從TWPAS IG規範。</li>
	<li><strong><a href="https://nhicore.nhi.gov.tw/pas/history.html">版本異動說明頁</a></strong>：若TWPAS IG網站的版本有所異動，皆可透過<a href="https://nhicore.nhi.gov.tw/pas/history.html">異動說明頁</a>得以瞭解版本間的異動差異。</li>
</ul>
</div>

### 作者與貢獻者
<table class="grid">
    <thead>
        <tr class="header">
            <th style="width:10%">角色</th>
            <th style="width:30%">姓名</th>
            <th style="width:50%">機構</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="vertical-align: middle;">作者-IG</td>
            <td style="vertical-align: middle;">李麗惠</td>
            <td rowspan="2" style="vertical-align: middle;">國立臺北護理健康大學-健康事業管理系</td>
        </tr>
        <tr>
            <td>作者-IG</td>
            <td>曾鈺珈</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>張如薰</td>
            <td rowspan="4" style="vertical-align: middle;">衛生福利部中央健康保險署-醫審及藥材組</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>涂奇君</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>張佐安</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>鄧嘉欣</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td colspan="2">醫藥品查驗中心(CDE)</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td colspan="2">衛生福利部中央健康保險署-資訊組</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td colspan="2">衛生福利部資訊處</td>
        </tr>
    </tbody>
</table>

<div class="bg-info"><p>如醫院有參與意願，或對資料內容、代碼檔、IG有任何疑問，歡迎聯繫下方窗口：</p>
    <ol>   
        <li>有關資料內容或代碼檔請找張小姐(02-27065866轉3062)、鄧小姐(02-27065866轉3040)</li>
        <li>有關TWPAS IG請找吳先生(02-27065866轉6048)</li>
        <li>聯繫信箱:E00@nhi.gov.tw<span style="color:#FF0000;">(此信箱僅提供醫院洽詢相關業務事項)</span></li>
	</ol>
<p><span style="color:#FF0000;">*若民眾對事前審查案申請案件有疑義，請洽各分區業務組。</span></p>
</div>