ValueSet: MII_VS_Biobank_Cellline_Modification_CLO
Id: mii-vs-biobank-cellline-modification-clo
Title: "MII VS Biobank Cellline Modification CLO"
Description: "Arten der Modifikationen an einer Zellinie"

* insert Publisher
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert LicenseCodeableCCBY40
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* ^description = "Value Set for Types of Cell Line Modifications (CLO)"

* include $CLO#CLO:0037376 "derived from cell with isogenic modification of gene"
* include $CLO#CLO:0037377 "derived from cell with knockin gene"
* include $CLO#CLO:0037375 "derived from cell with knockout gene"
* include $CLO#CLO:0037378 "derived from cell with transgenic modification"
