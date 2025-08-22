//Head
Profile: MII_PR_Biobank_Substance_Additiv
Parent: Substance
Id: mii-pr-biobank-substance-additiv
Title: "MII PR Biobank Substance Additiv"
Description: "Abbildung eines Additives, das zu einer Probe hinzugefügt werden kann"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance"

//Translation Meta
* insert Translation(^name, en-US, MII_PR_Biobank_Substance_Additive)
* insert Translation(^title, de-DE, Substance Additiv)
* insert Translation(^title, en-US, Substance Additive)
* insert Translation(^description, de-DE, Abbildung eines Additives\, das zu einer Probe hinzugefügt werden kann)
* insert Translation(^description, en-US, Representation of an additive that can be added to a specimen)

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

* code and ingredient and category MS
* code from MII_VS_Biobank_Substance_Additive_SCT (extensible)
