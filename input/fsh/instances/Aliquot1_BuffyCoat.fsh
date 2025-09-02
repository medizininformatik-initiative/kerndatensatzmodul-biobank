Instance: AliquotBuffyCoat1
InstanceOf: MII_PR_Biobank_Specimen_Bioprobe
Title: "Buffy-Coat Einzelaliquot 50 µl"
Usage: #example

* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#ALIQUOT "Aliquot"
* parent = Reference(AliquotgruppeBuffyCoat)
* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "12345-BC-1"
* status = #available
* type.coding[+] = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs#BuffyCoat "Buffy coat"

* subject.reference = "Patient/mii-exa-test-data-patient-1"
* collection.collectedDateTime = "2018-06-07T15:54:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = -196
* processing[=].extension[temperaturbedingungen].valueRange.high.value = -150
* processing[=].extension[temperature-miabis].valueCodeableConcept = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-storage-temperature-cs#LN
* processing[=].procedure = $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T17:07:00+01:00"


* container.type = http://snomed.info/sct#83059008 "Tube, device (physical object)"
* container.capacity = 0.5 'ml'
* container.specimenQuantity = 0.05 'ml'
