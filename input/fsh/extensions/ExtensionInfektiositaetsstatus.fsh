Extension: MII_EX_Biobank_Infektiositaetsstatus
Id: mii-ex-biobank-infektiositaetsstatus
Title: "Infektiositätsstatus"
Description: "Extension zur Angabe des Infektiositätsstatus einer Probe anhand der Biosafety-Level-Einstufung (BSL-1 bis BSL-4, SNOMED CT) bzw. der Angabe, dass keine Infektionsgefahr bekannt ist."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus"
* ^status = #active

//Translation
* insert Translation(^name, en-US, MII_EX_Biobank_Infektiositaetsstatus)
* insert Translation(^title, en-US, MII EX Biobank Infectiosity Status)
* insert Translation(^description, en-US, The extension specifies the infectiosity status of a specimen based on the biosafety level classification ranging from BSL-1 to BSL-4 or an indication that no infection risk is known.)

//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(Specimen)

* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Biobank_Biosafety_Level (required)
* value[x] 1..1 MS
* value[x] ^short = "Biosafety-Level (SNOMED CT) bzw. 'keine Infektionsgefahr bekannt'"
* insert Translation(value[x] ^short, en-US, Biosafety level SNOMED CT or no known infection risk)
