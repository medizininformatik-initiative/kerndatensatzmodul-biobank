Instance: AliquotgruppePlasma
InstanceOf: MII_PR_Biobank_Specimen_Bioprobe
Title: "Plasma Aliquotgruppe"
Usage: #example

* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#ALIQUOTGRUPPE "Aliquotgruppe"
* parent = Reference(MusterprobeFluessig)
* extension[anzahlAliquots].valueInteger = 4
* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "12345-PL"
* status = #available
* type.coding[miabis-type] = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs#Plasma "Plasma"
* type.coding[sct] = $SCT#119361006 "Plasma specimen (specimen)"

* subject.reference = "Patient/mii-exa-test-data-patient-1"
* collection.collectedDateTime = "2018-06-07T15:54:00+01:00"



* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].extension[temperature-miabis].valueCodeableConcept = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-storage-temperature-cs#RT "Room temperature"
* processing[=].procedure = $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:37:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T17:17:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = -85
* processing[=].extension[temperaturbedingungen].valueRange.high.value = -75
* processing[=].extension[temperature-miabis].valueCodeableConcept = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-storage-temperature-cs#-60to-85 "between -60 and -85 degrees Celsius"
* processing[=].procedure = $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T17:17:00+01:00"

* container.type = http://snomed.info/sct#83059008 "Tube, device (physical object)"
* container.specimenQuantity.value = 5
* container.specimenQuantity.system = $UCUM
* container.specimenQuantity.code = #ml
* container.specimenQuantity.unit = "ml"
