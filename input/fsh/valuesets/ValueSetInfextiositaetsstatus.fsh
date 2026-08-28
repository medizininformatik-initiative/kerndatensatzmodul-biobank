ValueSet: MII_VS_Biobank_Biosafety_Level
Id: mii-vs-biobank-biosafety-level
Title: "Biosafety-Level Einstufung (ValueSet)"
Description: "ValueSet zur Auswahl der Biosafety-Level-Einstufung einer Probe (SNOMED CT), inklusive eines Codes für 'keine Infektionsgefahr bekannt'."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-biosafety-level"
* ^status = #active

//Translation
* insert Translation(^name, en-US, MII_VS_Biobank_Biosafety_Level)
* insert Translation(^title, en-US, MII VS Biobank Biosafety Level)
* insert Translation(^description, en-US, ValueSet for selecting the biosafety level classification of a specimen based on SNOMED CT including a code for no known infection risk.)

//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher

* http://snomed.info/sct#409600007 "Biosafety level 1 (qualifier value)"
* http://snomed.info/sct#409603009 "Biosafety level 2 (qualifier value)"
* http://snomed.info/sct#409604003 "Biosafety level 3 (qualifier value)"
* http://snomed.info/sct#409605002 "Biosafety level 4 (qualifier value)"
* http://snomed.info/sct#261665006 "Unknown (qualifier value)"
