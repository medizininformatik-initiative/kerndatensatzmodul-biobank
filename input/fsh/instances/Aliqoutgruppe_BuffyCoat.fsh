Instance: AliquotgruppeBuffyCoat
InstanceOf: MII_PR_Biobank_Specimen_Bioprobe
Title: "Buffy-Coat Aliquotgruppe"
Usage: #example

* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#ALIQUOTGRUPPE "Aliquotgruppe"
* parent = Reference(MusterprobeFluessig)
* extension[anzahlAliquots].valueInteger = 1
* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "12345-BC"
* status = #available
* type.coding[+] = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs#BuffyCoat "Buffy coat"
* type.coding[+] = $SCT#258587000 "Buffy coat (specimen)"

* subject.reference = "Patient/mii-exa-test-data-patient-1"
* collection.collectedDateTime = "2018-06-07T15:54:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].extension[temperature-miabis].valueCodeableConcept = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-storage-temperature-cs#RT "Room temperature"
* processing[=].procedure = $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:37:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T17:07:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = -196
* processing[=].extension[temperaturbedingungen].valueRange.high.value = -150
* processing[=].extension[temperature-miabis].valueCodeableConcept = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-storage-temperature-cs#LN
* processing[=].procedure = $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T17:07:00+01:00"

* container.type = http://snomed.info/sct#83059008 "Tube, device (physical object)"
* container.capacity = 2 'ml'
* container.specimenQuantity = 0.2 'ml'
* note.text = "Buffy-Coat Aliquots für Genomik-Analysen"