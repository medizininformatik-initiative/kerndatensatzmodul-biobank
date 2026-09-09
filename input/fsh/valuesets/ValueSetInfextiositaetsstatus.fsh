ValueSet: MII_VS_Biobank_Biosafety_Level_SNOMEDCT
Id: mii-vs-biobank-biosafety-level-snomedct
Title: "MII VS Biobank Biosafety-Level Einstufung [SNOMED CT]"
Description: "ValueSet zur Auswahl der Biosafety-Level-Einstufung einer Probe (SNOMED CT), inklusive eines Codes für 'keine Infektionsgefahr bekannt'."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-biosafety-level-snomedct"
* ^status = #active

//Translation
* insert Translation(^name, en-US, MII_VS_Biobank_Biosafety_Level_SNOMEDCT)
* insert Translation(^title, en-US, MII VS Biobank Biosafety Level Classification [SNOMED CT])
* insert Translation(^description, en-US, ValueSet for selecting the biosafety level classification of a specimen based on SNOMED CT including a code for no known infection risk.)

//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher

// SNOMED CT Versionsbindung gemäß MII Terminology Version Policy für v2026.*-Releases
// (https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Terminology-Version-Policy)
* ^compose.include[0].version = "http://snomed.info/sct/900000000000207008/version/20250701"

* http://snomed.info/sct#409600007 "Biosafety level 1 (qualifier value)"
* http://snomed.info/sct#409603009 "Biosafety level 2 (qualifier value)"
* http://snomed.info/sct#409604003 "Biosafety level 3 (qualifier value)"
* http://snomed.info/sct#409605002 "Biosafety level 4 (qualifier value)"
* http://snomed.info/sct#261665006 "Unknown (qualifier value)"
