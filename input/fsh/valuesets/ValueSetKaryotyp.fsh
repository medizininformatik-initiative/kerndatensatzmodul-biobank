ValueSet: MII_VS_Biobank_Karyotyp_SCT
Id: mii-vs-biobank-karyotyp-sct
Title: "MII VS Biobank Karyotyp SCT"

* insert Publisher
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert LicenseCodeableCCBY40
* insert SNOMED_Copyright
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include $SCT#27159004 "Haploidy (cell structure)"
* include $SCT#89304008 "Diploidy (cell structure)"
* include $SCT#734875008 "Karyotype 46, XX (cell structure)"
* include $SCT#734876009 "Karyotype 46, XY (cell structure)"