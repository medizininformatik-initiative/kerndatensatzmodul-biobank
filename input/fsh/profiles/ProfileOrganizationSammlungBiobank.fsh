Profile: ProfileOrganizationSammlungBiobank
Parent: http://hl7.org/fhir/StructureDefinition/Organization
Id: Organization
Title: "Profile - Organization - Sammlung/Biobank"
Description: "Darstellung der organisatorischen Daten einer Probensammlung oder Biobank."

* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40

* extension contains BeschreibungSammlung named beschreibung 0..1 MS
* insert Translation(extension[BeschreibungSammlung] ^short, de-DE, Beschreibung der Sammlung/Biobank)
* insert Translation(extension[BeschreibungSammlung] ^short, en-US, Description of the collection/biobank)
* insert Translation(extension[BeschreibungSammlung] ^definition, de-DE, Eine Freitextbeschreibung der Sammlung/Biobank\, die z.B. in einer Suche angezeigt werden kann.)
* insert Translation(extension[BeschreibungSammlung] ^definition, en-US, A free-text description of the collection/biobank\, which can be displayed in a search\, for example.)

* identifier and type and name and alias and partOf and contact MS
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

* type from https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/miabis-collection-type (extensible)
* insert Translation(type ^short, de-DE, Sammlungstyp)
* insert Translation(type ^short, en-US, Collection type)
* insert Translation(type ^definition, de-DE, Der Typ der Sammlung oder Biobank\, basierend auf MIABIS.)
* insert Translation(type ^definition, en-US, The type of the collection or biobank\, based on MIABIS.)

* contact ^slicing.discriminator.type = #pattern
* contact ^slicing.discriminator.path = "purpose"
* contact ^slicing.rules = #open

* contact contains forschungskontakt 1..* MS

* contact[forschungskontakt].extension contains KontaktRolle named rolle 1..1 MS

* contact[forschungskontakt].purpose = ContactType#RESEARCH
* contact[forschungskontakt].name.family 1..1 MS
* contact[forschungskontakt].name.given 1..* MS

* contact[forschungskontakt].telecom 1..*

* contact[forschungskontakt].address 1..1 MS
* contact[forschungskontakt].address only http://fhir.de/StructureDefinition/address-de-basis
