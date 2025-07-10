ValueSet: DNAChangeType
Id: dna-change-type
Title: "LOINC-健保事前審查-基因突變類型值集"
Description: "LOINC-健保事前審查-基因突變類型值集"
* ^date = "2025-07-01"
* ^version = "1.0.6"
* ^experimental = false
* $loinc#LA6692-3 "Deletion"
* $loinc#LA6686-5 "Duplication"
* $loinc#LA6687-3 "Insertion"
* $loinc#LA6688-1 "Insertion/Deletion"
* $loinc#LA6689-9 "Inversion"
* $loinc#LA6690-7 "Substitution"
* https://nhicore.nhi.gov.tw/pas/CodeSystem/inca-osiris#O55-2 "Delins"
* $loinc#101397-8 "Copy number variation analysis Sequencing Doc (Bld/Tiss)"
* $loinc#81695-9 "MSI Ca spec-Imp"
* $loinc#94077-5 "TMB Tumor-Imp"


CodeSystem: INCaOsiris
Id: inca-osiris
Title: "INCa-健保事前審查-基因突變類型"
Description: "INCa-健保事前審查-基因突變類型，資料所屬單位：Institut National du Cancer (INCa)，參照至：https://github.com/InstitutNationalduCancer/OSIRIS。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2025-07-01"
* ^version = "1.0.6"
* ^experimental = false
* #O55-2 "Delins"