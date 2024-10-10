Profile: ProfileOrganizationSammlungBiobank
Parent: http://hl7.org/fhir/StructureDefinition/Organization
Id: Organization
Title: "Profile - Organization - Sammlung/Biobank"
Description: "Darstellung der organisatorischen Daten einer Probensammlung oder Biobank."

* extension contains BeschreibungSammlung named beschreibung 0..1 MS

* identifier and type and name and alias and partOf and contact MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains bbmri-eric-id 0..1 MS

* identifier[bbmri-eric-id] ^patternIdentifier.system = "http://www.bbmri-eric.eu/"

* name 1..1

* type from https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/miabis-collection-type (extensible)

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
