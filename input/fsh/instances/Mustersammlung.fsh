Instance: Mustersammlung
InstanceOf: MII_PR_Biobank_Organization_Sammlung_Biobank
Title: "Mustersammlung"
Usage: #example

* extension[beschreibung].valueString = "Sammlung mit im Rahmen der Versorgung gewonnenen Proben."
* extension[collectionSetting].valueCodeableConcept = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-sample-collection-setting-cs#RoutineHealthCare "Routine health care setting"
* extension[collectionDesign].valueCodeableConcept = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-collection-design-cs#LongitudinalCohort "Longitudinal cohort"
* name = "Mustersammlung"
* partOf = Reference(BiobankMusterstadt)
* contact[forschungskontakt].extension[rolle].valueString = "Forschungskoordinatorin"
* contact[forschungskontakt].name.family = "Musterfrau"
* contact[forschungskontakt].name.given = "Tina"
* contact[forschungskontakt].name.prefix = "Dr."
* contact[forschungskontakt].telecom.system = #email
* contact[forschungskontakt].telecom.value = "musterfrau@biobank.uk-musterstadt.de"
* contact[forschungskontakt].address.line = "Musterweg 10"
* contact[forschungskontakt].address.postalCode = "00000"
* contact[forschungskontakt].address.city = "Musterstadt"
