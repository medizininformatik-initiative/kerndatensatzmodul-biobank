Profile: ProfileSpecimenBioprobe
Parent: SpecimenCore
Id: Specimen
Title: "Profile - Specimen - Bioprobe"
Description: "Abbildung einer MII Bioprobe"

* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40

//Bioprobe

* extension contains Diagnose named festgestellteDiagnose 0..1 MS and VerwaltendeOrganisation named gehoertZu 0..1 MS

* insert Translation(extension[festgestellteDiagnose] ^short, de-DE, Festgestellte Diagnose)
* insert Translation(extension[festgestellteDiagnose] ^short, en-US, Diagnosed condition)
* insert Translation(extension[festgestellteDiagnose] ^definition, de-DE, Verweis auf eine Diagnose\, für die Material in der Probe enthalten ist.)
* insert Translation(extension[festgestellteDiagnose] ^definition, en-US, Reference to a diagnosis for which material is present in the specimen.)

* insert Translation(extension[gehoertZu] ^short, de-DE, Verwaltende Organisation)
* insert Translation(extension[gehoertZu] ^short, en-US, Managing organization)
* insert Translation(extension[gehoertZu] ^definition, de-DE, Zuordnung der Probe zu einer Sammlung oder Biobank\, die für die Verwaltung verantwortlich ist.)
* insert Translation(extension[gehoertZu] ^definition, en-US, Assignment of the specimen to a collection or biobank responsible for its management.)

* type.coding contains miabis-type 0..1 MS
* type.coding[miabis-type] from https://fhir.bbmri-eric.eu/fhir/ValueSet/miabis-detailed-sample-type-vs (required)