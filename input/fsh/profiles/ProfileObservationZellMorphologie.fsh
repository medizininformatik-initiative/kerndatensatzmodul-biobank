//Head
Profile: MII_PR_Biobank_Observation_Morphologie
Parent: Observation
Id: mii-pr-biobank-observation-morphologie
Title: "MII PR Biobank Observation Morphologie"
Description: "Morphologie einer Zelline oder eines Organiods"

//Translation Meta
* insert Translation(^name, en-US, MII_PR_Biobank_Observation_Morphology)
* insert Translation(^title, de-DE, Observation Morphologie)
* insert Translation(^title, en-US, Observation Morphology)
* insert Translation(^description, de-DE, Morphologie einer Zelline oder eines Organiods)
* insert Translation(^description, en-US, Morphology of a cell line or organoid)

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
* code = http://purl.obolibrary.org/obo/PATO_#0010006 "cell morphology"
* focus 1..1 MS
* focus only Reference(Specimen)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Biobank_Cellline_Morphology_SCT (extensible)
