Extension: ClaimEncounter
Id: extension-claim-encounter
Description: "就醫科別"
Context: Claim
* . ^definition = "就醫科別"
* value[x] only Reference(EncounterTWPAS)