Profile:        ImagingStudyTWPAS
Parent:         TWCoreImagingStudy
Id:             ImagingStudy-twpas
Title:          "DICOM影像-ImagingStudy TWPAS"
Description:    "此DICOM影像-ImagingStudy TWPAS Profile說明本IG如何進一步定義臺灣核心-影像檢查(TW Core ImagingStudy) Profile以呈現癌藥事前審查中疾病資訊之影像報告的影像檢查的身體部位及DICOM影像"
* subject only Reference(PatientTWPAS) 
* series 1..*
* series.bodySite 0..1 MS
* series.bodySite from SNOMEDCTBodySite
* series.bodySite  ^short = "影像檢查的身體部位"
* series.instance.uid ^short = "DICOM影像"
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    study-uid 1..1 MS
* identifier[study-uid].system 1..1 MS
* identifier[study-uid].value 1..1 MS
* identifier[study-uid].system = "urn:dicom:uid"
* identifier[study-uid].value obeys StudyUID
* identifier[study-uid] ^short = "整項影像檢查的識別碼。上傳至健保署時，必要填寫 DICOM 檢查實例 UID (Study Instance UID)"
* identifier[study-uid].value ^example[0].valueString = "urn:oid:2.16.886.2102.54.4546465747.465465465"
* identifier[study-uid].value ^example[+].label = "General"
* identifier[study-uid].value ^example[=].valueString = "urn:oid:2.16.886.2102.54.4546465747.0.46546546"

* modality from https://twcore.mohw.gov.tw/ig/pas/ValueSet/dicom-cid-29-AcquisitionModality (extensible)
* series.modality from https://twcore.mohw.gov.tw/ig/pas/ValueSet/dicom-cid-29-AcquisitionModality (extensible)

Invariant:   StudyUID
Description: "以`urn:oid:`開頭，後接一串由數字`0`-`9`及`.`組成的字串。第一個數字須為個位數，每個數字不得為`0`開頭（除非為單一的`0`），整體(不含`urn:oid:`)長度不得超過64 bytes。"
Expression:  "value.matches('^urn:oid:(0|[1-9])(.(0|[1-9][0-9]*)){0,63}$')"
Severity:    #error


Profile:        MediaTWPAS
Parent:         TWCoreMedia
Id:             Media-twpas
Title:          "非DICOM影像-Media TWPAS"
Description:    "此非DICOM影像-Media TWPAS Profile說明本IG如何進一步定義臺灣核心-多媒體(TW Core Media) Profile以呈現癌藥事前審查中疾病資訊之影像報告的非DICOM影像"
* subject only Reference(PatientTWPAS) 
* content.url 1.. MS
* content obeys UploadContent
* content.contentType 1.. MS
* content.contentType from MediaMimeTypes
* bodySite 0..1 MS
* bodySite from SNOMEDCTBodySite
* bodySite  ^short = "影像檢查的身體部位"
//* content.data ^short = "Data inline, base64 encoded。上傳至健保署時不得填入，若醫院不小心上傳，需要先擋掉。"
* content.url ^short = "非DICOM影像（請填寫完整檔案路徑）"
* content.url ^example.valueUrl = "file://US01.jpg"

Invariant:   UploadContent
Description: "填寫格式：file://檔名.副檔名，例如：file://US01.jpg、file://PathologyReport01.pdf、file://GenReport01.pdf、file://王大明病歷.pdf"
Expression:  "url.matches('^file://[a-zA-Z0-9\u4e00-\u9fa5]+.[a-zA-Z]{2,5}$')"
Severity:    #error

ValueSet: MediaMimeTypes
Id: media-mimetypes
Title: "HL7-非DICOM影像MimeType值集"
Description: "HL7-非DICOM影像MimeType值集"
* ^date = "2024-12-06"
* ^version = "1.0.2"
* ^experimental = false
* urn:ietf:bcp:13#image/jpeg
* urn:ietf:bcp:13#image/jpg
* urn:ietf:bcp:13#image/bmp
* urn:ietf:bcp:13#video/mpeg
* urn:ietf:bcp:13#video/mpg
* urn:ietf:bcp:13#video/mp4



Alias: $DCM = http://dicom.nema.org/resources/ontology/DCM

ValueSet: AcquisitionModality
Id: dicom-cid-29-AcquisitionModality
Description: "原值集因總會工具問題無法正常顯示，故先自建值集。"

* ^version = "2024.2.20240331"
* ^status = #active
* ^experimental = false
* ^date = "2024-03-31"
* ^publisher = "NEMA MITA DICOM"
* ^copyright = "© 2024 NEMA"
* $DCM#BMD "Bone Mineral Densitometry"
* $DCM#EOG "Electrooculography"
* $DCM#SM "Slide Microscopy"
* $DCM#OP "Ophthalmic Photography"
* $DCM#ECG "Electrocardiography"
* $DCM#GM "General Microscopy"
* $DCM#XA "X-Ray Angiography"
* $DCM#XC "External-camera Photography"
* $DCM#DMS "Dermoscopy"
* $DCM#IVUS "Intravascular Ultrasound"
* $DCM#CR "Computed Radiography"
* $DCM#CT "Computed Tomography"
* $DCM#PA "Photoacoustic"
* $DCM#OSS "Optical Surface Scanner"
* $DCM#TG "Thermography"
* $DCM#LEN "Lensometry"
* $DCM#OPTENF "Ophthalmic Tomography En Face"
* $DCM#HD "Hemodynamic Waveform"
* $DCM#OCT "Optical Coherence Tomography"
* $DCM#BDUS "Ultrasound Bone Densitometry"
* $DCM#DG "Diaphanography"
* $DCM#PT "Positron emission tomography"
* $DCM#EPS "Cardiac Electrophysiology"
* $DCM#LS "Laser Scan"
* $DCM#PX "Panoramic X-Ray"
* $DCM#OPM "Ophthalmic Mapping"
* $DCM#OPTBSV "Ophthalmic Tomography B-scan Volume Analysis"
* $DCM#OPV "Ophthalmic Visual Field"
* $DCM#DX "Digital Radiography"
* $DCM#OPT "Ophthalmic Tomography"
* $DCM#MG "Mammography"
* $DCM#US "Ultrasound"
* $DCM#EMG "Electromyography"
* $DCM#IVOCT "Intravascular Optical Coherence Tomography"
* $DCM#MR "Magnetic Resonance"
* $DCM#IO "Intra-oral Radiography"
* $DCM#EEG "Electroencephalography"
* $DCM#RTIMAGE "RT Image"
* $DCM#VA "Visual Acuity"
* $DCM#RESP "Respiratory Waveform"
* $DCM#ES "Endoscopy"
* $DCM#AR "Autorefraction"
* $DCM#POS "Position Sensor"
* $DCM#RG "Radiographic imaging"
* $DCM#RF "Radiofluoroscopy"
* $DCM#KER "Keratometry"
* $DCM#OAM "Ophthalmic Axial Measurements"
* $DCM#NM "Nuclear Medicine"
* $DCM#BI "Biomagnetic Imaging"
* $DCM#SRF "Subjective Refraction"
* $DCM#CFM "Confocal Microscopy"
