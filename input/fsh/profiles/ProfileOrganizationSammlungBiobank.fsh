//Head
Profile: MII_PR_Biobank_Organization_Sammlung_Biobank
Parent: Organization
Id: mii-pr-biobank-organization
Title: "MII PR Biobank Organization Sammlung Biobank"
Description: "Darstellung der organisatorischen Daten einer Probensammlung oder Biobank."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization"

//Translation Meta
* insert Translation(^name, en-US, MII_PR_Biobank_Organization_Sammlung_Biobank)
* insert Translation(^title, de-DE, Organization Sammlung Biobank)
* insert Translation(^title, en-US, Organization Sample Collection Biobank)
* insert Translation(^description, de-DE, Darstellung der organisatorischen Daten einer Probensammlung oder Biobank.)
* insert Translation(^description, en-US, Representation of the organizational data of a sample collection or biobank.)

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


* extension contains https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-organization-description-extension named beschreibung 0..1 MS
            and https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-collection-setting-extension named collectionSetting 0..1 MS
            and https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-collection-design-extension named collectionDesign 0..1 MS
* insert Translation(extension[beschreibung] ^short, de-DE, Beschreibung der Sammlung/Biobank)
* insert Translation(extension[beschreibung] ^short, en-US, Description of the collection/biobank)
* insert Translation(extension[beschreibung] ^definition, de-DE, Eine Freitextbeschreibung der Sammlung/Biobank\, die z.B. in einer Suche angezeigt werden kann.)
* insert Translation(extension[beschreibung] ^definition, en-US, A free-text description of the collection/biobank\, which can be displayed in a search\, for example.)

* identifier and name and alias and partOf and contact MS
* insert Translation(alias ^short, de-DE, Akronym)
* insert Translation(alias ^short, en-US, Acronym)
* insert Translation(alias ^definition, de-DE, Das Akronym oder der Kurztitel der Sammlung oder Biobank.)
* insert Translation(alias ^definition, en-US, The acronym or short title of the collection or biobank.)

* insert Translation(partOf ^short, de-DE, Teil von)
* insert Translation(partOf ^short, en-US, Part of)
* insert Translation(partOf ^definition, de-DE, Verweist auf eine übergeordnete Sammlung oder Biobank\, zu der diese gehört.)
* insert Translation(partOf ^definition, en-US, Refers to a parent collection or biobank to which this belongs.)

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains bbmri-eric-id 0..1 MS

* identifier[bbmri-eric-id] ^patternIdentifier.system = "http://www.bbmri-eric.eu/"

* insert Translation(identifier[bbmri-eric-id] ^short, de-DE, BBMRI-ERIC ID)
* insert Translation(identifier[bbmri-eric-id] ^short, en-US, BBMRI-ERIC ID)
* insert Translation(identifier[bbmri-eric-id] ^definition, de-DE, Eindeutige Kennung im BBMRI-ERIC-Netzwerk.)
* insert Translation(identifier[bbmri-eric-id] ^definition, en-US, Unique identifier in the BBMRI-ERIC network.)

* name 1..1
* insert Translation(name ^short, de-DE, Name)
* insert Translation(name ^short, en-US, Name)
* insert Translation(name ^definition, de-DE, Der vollständige Name der Sammlung oder Biobank.)
* insert Translation(name ^definition, en-US, The full name of the collection or biobank.)

* contact ^slicing.discriminator.type = #pattern
* contact ^slicing.discriminator.path = "purpose"
* contact ^slicing.rules = #open

* contact contains forschungskontakt 1..* MS

* contact[forschungskontakt].extension contains MII_EX_Biobank_KontaktRolle named rolle 1..1 MS

* contact[forschungskontakt].purpose = MII_CS_Biobank_Contact_Type#RESEARCH
* contact[forschungskontakt].name.family 1..1 MS
* contact[forschungskontakt].name.given 1..* MS

* contact[forschungskontakt].telecom 1..*

* contact[forschungskontakt].address 1..1 MS
* contact[forschungskontakt].address only http://fhir.de/StructureDefinition/address-de-basis
