//Head
Profile: MII_PR_Biobank_Observation_Qualitaetspruefung
Parent: Observation
Id: mii-pr-biobank-observation-qualitaetspruefung
Title: "MII PR Biobank Observation Qualitätsprüfung"
Description: "Art und Ergebnis einer an einer Zelline oder einem Organiod durchgeführten Qualitätsprüfung"

//Translation Meta
* insert Translation(^name, en-US, MII_PR_Biobank_Observation_Quality_Check)
* insert Translation(^title, de-DE, Observation Qualitätsprüfung)
* insert Translation(^title, en-US, Observation Quality Check)
* insert Translation(^description, de-DE, Art und Ergebnis einer an einer Zelline oder einem Organiod durchgeführten Qualitätsprüfung)
* insert Translation(^description, en-US, Type and result of a quality check performed on a cell line or organoid)

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
* code = $SCT#386404008 "Quality monitoring (procedure)"
* focus 1..1 MS
* focus only Reference(Specimen)
* value[x] 0..0
* effective[x] 1..1 MS

* component 2..*
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "$this.code"
* component ^slicing.rules = #open
* component contains type 1..1 MS and result 1..1 MS
* component[type].code = $SCT#246423001 "Test protocol used (attribute)"
* component[type].value[x] only CodeableConcept or string
* component[result].code = $SCT#79409006 "Resulting in (attribute)"
* component[result].value[x] only CodeableConcept