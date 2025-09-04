//Head
Profile: MII_PR_Biobank_Specimen_Bioprobe
Parent: MII_PR_Biobank_Specimen_Bioprobe_Core
Id: mii-pr-biobank-specimen
Title: "MII PR Biobank Specimen Bioprobe"
Description: "Abbildung einer MII Bioprobe"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen"

//Translation Meta
* insert Translation(^name, en-US, MII_PR_Biobank_Specimen_Bioprobe)
* insert Translation(^title, de-DE, Specimen Bioprobe)
* insert Translation(^title, en-US, Specimen Bioprobe)
* insert Translation(^description, de-DE, Abbildung einer MII Bioprobe)
* insert Translation(^description, en-US, Representation of a MII bioprobe)

//Meta
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert Publisher
* insert LicenseCodeableCCBY40
* id MS
* meta MS
* meta.source MS
* meta.profile MS

//Profile


//Bioprobe

* extension contains MII_EX_Biobank_Diagnose named festgestellteDiagnose 0..1 MS 
                and MII_EX_Biobank_Verwaltende_Organisation named gehoertZu 0..1 MS 
                and MII_EX_Biobank_Anzahl_Aliquots named anzahlAliquots 0..1 MS 

* insert Translation(extension[festgestellteDiagnose] ^short, de-DE, Festgestellte Diagnose)
* insert Translation(extension[festgestellteDiagnose] ^short, en-US, Diagnosed condition)
* insert Translation(extension[festgestellteDiagnose] ^definition, de-DE, Verweis auf eine Diagnose\, für die Material in der Probe enthalten ist.)
* insert Translation(extension[festgestellteDiagnose] ^definition, en-US, Reference to a diagnosis for which material is present in the specimen.)

* insert Translation(extension[gehoertZu] ^short, de-DE, Verwaltende Organisation)
* insert Translation(extension[gehoertZu] ^short, en-US, Managing organization)
* insert Translation(extension[gehoertZu] ^definition, de-DE, Zuordnung der Probe zu einer Sammlung oder Biobank\, die für die Verwaltung verantwortlich ist.)
* insert Translation(extension[gehoertZu] ^definition, en-US, Assignment of the specimen to a collection or biobank responsible for its management.)

//MIABIS
* type.coding contains miabis-type 0..1 MS
* type.coding[miabis-type] from https://fhir.bbmri-eric.eu/fhir/ValueSet/miabis-detailed-sample-type-vs (required)
* type.coding[miabis-type].system = "https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs"
* processing.extension contains https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-storage-temperature-extension named temperature-miabis 0..1 MS