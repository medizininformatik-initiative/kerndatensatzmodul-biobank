ValueSet: MII_VS_Biobank_CellLine_Proliferation
Id: mii-vs-biobank-cellline-proliferation
Title: "MII VS Biobank Proliferation Zellinie"
Description: "Proliferationstatus einer Zellinie/eines Organoids"

* insert Publisher
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert LicenseCodeableCCBY40
* insert SNOMED_Copyright
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* ^description = "Value Set for Proliferation Status of Cell Lines/Organoids"

* include http://purl.obolibrary.org/obo/pato.owl#PATO:0001422 "dead"
* include http://purl.obolibrary.org/obo/pato.owl#PATO:0001991 "immortal"
* include http://purl.obolibrary.org/obo/pato.owl#PATO:0000719 "viable"
* include $SCT#75540009 "High (qualifier value)"
* include $SCT#62482003 "Low (qualifier value)"
