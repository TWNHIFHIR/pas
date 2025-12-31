Extension: ClaimEncounter
Id: extension-claim-encounter
Description: "就醫科別"
Context: Claim
* ^version = "1.1.1"
* . ^definition = "就醫科別"
* value[x] only Reference(EncounterTWPAS)