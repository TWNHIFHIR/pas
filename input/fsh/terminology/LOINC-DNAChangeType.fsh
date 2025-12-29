ValueSet: DNAChangeType
Id: dna-change-type
Title: "LOINC-健保事前審查-基因突變類型值集"
Description: "LOINC-健保事前審查-基因突變類型值集"
* ^date = "2026-01-05"
* ^version = "1.1.0"
* ^experimental = false
* $loinc#LA6692-3 "Deletion"
* $loinc#LA6686-5 "Duplication"
* $loinc#LA6687-3 "Insertion"
* $loinc#LA6688-1 "Insertion/Deletion"
* $loinc#LA6689-9 "Inversion"
* $loinc#LA6690-7 "Substitution"
* https://nhicore.nhi.gov.tw/pas/CodeSystem/inca-osiris#O55-2 "Delins"
* $loinc#101397-8 "Copy number variation analysis in Blood or Tissue by Sequencing"
* $loinc#81695-9 "MSI Ca spec-Imp"
* $loinc#94077-5 "TMB Tumor-Imp"
// 2025-09-18 add
* $loinc#LA11883-8 "Not detected"
// 2025-10-20 add
* $loinc#95123-6 "Gene fusion transcript details in Blood or Tissue by Molecular genetics method Narrative"


CodeSystem: INCaOsiris
Id: inca-osiris
Title: "INCa-健保事前審查-基因突變類型"
Description: "INCa-健保事前審查-基因突變類型，資料所屬單位：Institut National du Cancer (INCa)，參照至：https://github.com/InstitutNationalduCancer/OSIRIS。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2026-01-05"
* ^version = "1.1.0"
* ^experimental = false
* #O55-2 "Delins"