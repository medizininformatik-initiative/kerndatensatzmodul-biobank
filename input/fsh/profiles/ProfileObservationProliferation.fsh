//Head
Profile: MII_PR_Biobank_Observation_Proliferation
Parent: Observation
Id: mii-pr-biobank-observation-proliferation
Title: "MII PR Biobank Observation Proliferation"
Description: "Proliferation einer Zelline oder eines Organiods"

//Translation Meta
* insert Translation(^name, en-US, MII_PR_Biobank_Observation_Proliferation)
* insert Translation(^title, de-DE, Observation Proliferation)
* insert Translation(^title, en-US, Observation Proliferation)
* insert Translation(^description, de-DE, Proliferation einer Zelline oder eines Organiods)
* insert Translation(^description, en-US, Proliferation of a cell line or organoid)

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
* code = http://purl.obolibrary.org/obo/GO_#0008283 "cell population proliferation"
* focus 1..1 MS
* focus only Reference(Specimen)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Biobank_CellLine_Proliferation (extensible)
