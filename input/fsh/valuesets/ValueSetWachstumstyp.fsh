ValueSet: MII_VS_Biobank_Wachstumpstyp_CLO
Id: mii-vs-biobank-wachstumstyp-clo
Title: "MII VS Biobank Wachstumpstyp CLO"
Description: "Wachstumstyp einer Zellkultur"

* insert Publisher
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert LicenseCodeableCCBY40
* insert SNOMED_Copyright
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include $CLO#CLO:0000028 "adherent cell culture growth mode"
* include $CLO#CLO:0000029 "suspension cell culture growth mode"
