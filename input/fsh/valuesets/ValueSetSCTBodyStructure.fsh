ValueSet: MII_VS_Biobank_BodyStructures_SCT
Id: mii-vs-biobank-body-structures-sct
Title: "MII VS Biobank BodyStructures SCT"

* insert Publisher
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert LicenseCodeableCCBY40
* insert SNOMED_Copyright
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include codes from system $SCT where concept descendent-of #123037004
