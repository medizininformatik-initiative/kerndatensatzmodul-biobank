Instance: Mustersammlung
InstanceOf: Organization
Title: "Mustersammlung"
Usage: #example

* extension[beschreibung].valueString = "Sammlung mit im Rahmen der Versorgung gewonnenen Proben."
* type = MIABISCollectionType#HOSPITAL "Hospital"
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
