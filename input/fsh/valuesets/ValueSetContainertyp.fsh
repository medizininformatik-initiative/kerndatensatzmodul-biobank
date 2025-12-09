ValueSet: MII_VS_Biobank_Containertyp_SCT
Id: mii-vs-biobank-containertyp-sct
Title: "MII VS Biobank Containertyp SCT"

* insert Publisher
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert LicenseCodeableCCBY40
* insert SNOMED_Copyright
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* ^description = "Value Set for Container Types (SNOMED CT)"

* include codes from system $SCT where concept descendent-of #706041008
