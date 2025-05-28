Logical: ResponseModel
Id: ResponseModel
Title: "回覆(Response)癌症用藥癌藥事前審查之資料模型"
Description: "回覆(Response)癌症用藥癌藥事前審查之資料模型，此邏輯模型為定義癌症用藥事前審查情境下使用的所有資料欄位。  
為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目（element）。亦可配合[視覺化邏輯模型圖](vision.html#bundle%E6%9E%B6%E6%A7%8B%E5%9C%96)進行欄位對應"
* ^version = "1.0.4"
* approveDate 1..1 dateTime "核定日期" "核定日期"
* acptNo 1..1 string "案件受理狀態" "案件受理狀態"
* approveClaimComment 0..1 CodeableConcept "受理審查案件核定註記" "受理審查案件核定註記。1:同意 | 2:不予同意 | 3:部份同意 | 4:補件 | 5:退件"
* approveNum 0..1 decimal "核定數量" "核定數量"
* approveItemComment 0..1 CodeableConcept "個別醫令核定註記" "個別醫令核定註記。0:審核中 | 1:同意 | 2:不予同意 | 3:部份同意 | 4:補件 | 5:退件 | 6:不予同意:對應手術亦不支付 | 7:改核:如審查核定意見"

Mapping: TWPASClaimResponse
Id: TWPASClaimResponse
Title: "Mapping to TWPAS ClaimResponse"
Source: ResponseModel
Target: "https://nhicore.nhi.gov.tw/pas/StructureDefinition/ClaimResponse-twpas"
* approveDate -> "created (核定日期)"
* acptNo -> "disposition (案件受理狀態)"
* approveClaimComment -> "item.adjudication.reason (受理審查案件核定註記)"
* approveNum -> "item.adjudication.value (核定數量)"
* approveItemComment -> "item.detail.adjudication.reason (個別醫令核定註記)"