ValueSet: MII_VS_Biobank_Substance_Additive_SCT
Id: mii-vs-biobank-substance-additive-sct
Title: "MII VS Biobank Substance Additive"

* insert Publisher
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert LicenseCodeableCCBY40
* insert SNOMED_Copyright
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* ^description = "Value Set for Substance Additives (SNOMED CT)"

* include codes from system $SCT where concept descendent-of #105590001
