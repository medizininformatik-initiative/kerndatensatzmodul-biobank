Profile: ProfileSpecimenBioprobe
Parent: SpecimenCore
Id: Specimen
Title: "Profile - Specimen - Bioprobe"
Description: "Abbildung einer MII Bioprobe"

* insert PR_CS_VS_Version
//Bioprobe

* extension contains Diagnose named festgestellteDiagnose 0..1 MS and VerwaltendeOrganisation named gehoertZu 0..1 MS

* extension[festgestellteDiagnose] ^short = "Festgestellte Diagnose"
* insert Translation(extension[festgestellteDiagnose] ^short, de-DE, Festgestellte Diagnose)
* insert Translation(extension[festgestellteDiagnose] ^short, en-US, Diagnosed condition)

* extension[festgestellteDiagnose] ^definition = "Verweis auf eine Diagnose, für die Material in der Probe enthalten ist."
* insert Translation(extension[festgestellteDiagnose] ^definition, de-DE, Verweis auf eine Diagnose\, für die Material in der Probe enthalten ist.)
* insert Translation(extension[festgestellteDiagnose] ^definition, en-US, Reference to a diagnosis for which material is present in the specimen.)

* extension[gehoertZu] ^short = "Verwaltende Organisation"
* insert Translation(extension[gehoertZu] ^short, de-DE, Verwaltende Organisation)
* insert Translation(extension[gehoertZu] ^short, en-US, Managing organization)

* extension[gehoertZu] ^definition = "Zuordnung der Probe zu einer Sammlung oder Biobank, die für die Verwaltung verantwortlich ist."
* insert Translation(extension[gehoertZu] ^definition, de-DE, Zuordnung der Probe zu einer Sammlung oder Biobank\, die für die Verwaltung verantwortlich ist.)
* insert Translation(extension[gehoertZu] ^definition, en-US, Assignment of the specimen to a collection or biobank responsible for its management.)
