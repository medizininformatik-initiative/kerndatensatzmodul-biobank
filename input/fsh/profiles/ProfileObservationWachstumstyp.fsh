//Head
Profile: MII_PR_Biobank_Observation_Wachstumstyp
Parent: Observation
Id: mii-pr-biobank-observation-wachstumstyp
Title: "MII PR Biobank Observation Wachstumstyp"
Description: "Wachstumstyp einer Zelline oder eines Organiods"

//Translation Meta
* insert Translation(^name, en-US, MII_PR_Biobank_Observation_Growth_Type)
* insert Translation(^title, de-DE, Observation Wachstumstyp)
* insert Translation(^title, en-US, Observation Growth Type)
* insert Translation(^description, de-DE, Wachstumstyp einer Zelline oder eines Organiods)
* insert Translation(^description, en-US, Growth type of a cell line or organoid)

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
* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* code = $CLO#CLO:0000030 "cell culture growth mode"
* focus 1..1 MS
* focus only Reference(Specimen)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Biobank_Wachstumpstyp_CLO (extensible)
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS
