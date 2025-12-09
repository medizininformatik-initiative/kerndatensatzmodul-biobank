ValueSet: MII_VS_Biobank_Probenart_SCT
Id: mii-vs-biobank-probenart-sct
Title: "MII VS Biobank Probenart SCT"

* insert Publisher
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert LicenseCodeableCCBY40
* insert SNOMED_Copyright
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* ^description = "Value Set for Sample Types (SNOMED CT)"

* include codes from system $SCT where concept descendent-of #123038009
