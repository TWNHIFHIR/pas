Profile:        SubstancePhototherapyTWPAS
Parent:         Substance
Id:             Substance-phototherapy-twpas
Title:          "照光治療總次數-Substance Phototherapy TWPAS"
Description:    "此照光治療總次數-Substance Phototherapy TWPAS Profile說明本IG如何進一步定義FHIR的Substance Resource以呈現事前審查中治療資訊之照光治療總次數"
* ^version = "1.2.0"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/pas/StructureDefinition/Substance-phototherapy-twpas"
* ingredient 0..1 MS
* ingredient.quantity.numerator 1..1 
* ingredient.quantity.numerator.value 1..1 MS
* ingredient.substance[x] from NHIPhototherapy
* code from NHIPhototherapy

* ingredient.quantity.numerator.value ^short = "照光治療總次數"
* code ^short = "照光治療種類"
* ingredient.substance[x] ^short = "【因FHIR設計而需必填】"