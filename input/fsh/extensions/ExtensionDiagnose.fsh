//Head
Extension: MII_EX_Biobank_Diagnose
Id: mii-ex-biobank-diagnose
Title: "MII EX Biobank Diagnose"
Description: "Mittels dieser Extension kann ausgedrückt werden, dass Material mit der referenzierten Diagnose in der Probe enthalten ist."

//Translation
* insert Translation(^name, en-US, MII_EX_Biobank_Diagnosis)
* insert Translation(^title, en-US, MII EX Biobank Diagnosis)
* insert Translation(^description, en-US, This extension allows expressing that material with the referenced diagnosis is contained in the specimen.)

//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(Specimen)

//Url
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"

* value[x] only Reference(Condition)
