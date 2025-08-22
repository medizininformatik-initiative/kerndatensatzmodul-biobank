//Head
Extension: MII_EX_Biobank_KontaktRolle
Id: mii-ex-biobank-kontaktrolle
Title: "MII EX Biobank Rolle des Kontaktes"
Description: "Mittels dieser Extension soll die Rolle der Kontaktperson in der probenverwaltenden Organisation angegeben werden, z.B. Principal Investigator, Direktor usw."

//Translation
* insert Translation(^name, en-US, MII_EX_Biobank_Contact_Role)
* insert Translation(^title, en-US, MII EX Biobank Contact Role)
* insert Translation(^description, en-US, This extension allows specifying the role of the contact person in the specimen-managing organization\, e.g.\, Principal Investigator\, Director\, etc.)

//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(Organization.contact)

//Url
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/KontaktRolle"

* value[x] only string
