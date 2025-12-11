//Head
Profile: MII_PR_Biobank_Observation_DNA_Konzentration
Parent: Observation
Id: mii-pr-biobank-observation-dna-konzentration
Title: "MII PR Biobank Observation DNA Konzentration"
Description: "Die DNA-Konzentration einer Probe"

//Translation Meta
* insert Translation(^name, en-US, MII_PR_Biobank_Observation_DNA_Concentration)
* insert Translation(^title, de-DE, Observation DNA Konzentration)
* insert Translation(^title, en-US, Observation DNA Concentration)
* insert Translation(^description, de-DE, Die DNA-Konzentration einer Probe)
* insert Translation(^description, en-US, The DNA concentration of a specimen)

//Meta
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert Publisher
* insert LicenseCodeableCCBY40
* id MS
* meta MS
* meta.source MS
* meta.profile MS

//Profile

* code 1..1 MS
* code = $LOINC#72496-3 "DNA double strand [Mass/volume] in Specimen"
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* focus 1..1 MS
* focus only Reference(Specimen)
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system 1..1
* valueQuantity.code from MII_VS_Biobank_DNA_Concentration_Units_UCUM (required)

* effective[x] 0..1 MS
