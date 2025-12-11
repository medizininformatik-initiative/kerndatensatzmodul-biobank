//Head
Profile: MII_PR_Biobank_Observation_Karyotyp
Parent: Observation
Id: mii-pr-biobank-observation-karyotyp
Title: "MII PR Biobank Observation Karyotyp"
Description: "Der an einer Zelline oder einem Organiod festgestellte Karyotyo"

//Translation Meta
* insert Translation(^name, en-US, MII_PR_Biobank_Observation_Karyotype)
* insert Translation(^title, de-DE, Observation Karyotyp)
* insert Translation(^title, en-US, Observation Karyotype)
* insert Translation(^description, de-DE, Der an einer Zelline oder einem Organiod festgestellte Karyotyo)
* insert Translation(^description, en-US, The karyotype observed in a cell line or organoid)

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
* code = $SCT#734840008 "Karyotype (cell structure)"
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* focus 1..1 MS
* focus only Reference(Specimen)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Biobank_Karyotyp_SCT (extensible)
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS

* effective[x] 1..1 MS
