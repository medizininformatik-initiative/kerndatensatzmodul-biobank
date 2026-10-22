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
* type.coding[miabis-type] = $miabis-type#BuffyCoat "Buffy coat"
* type.coding[sct] = $sct-no-ver#258587000 "Buffy coat (specimen)"

* subject.reference = "Patient/mii-exa-test-data-patient-1"
* collection.collectedDateTime = "2018-06-07T15:54:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].extension[temperature-miabis].valueCodeableConcept = $miabis-storage-temp#RT "Room temperature"
* processing[=].procedure = $sct-no-ver#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:37:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T17:07:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = -196
* processing[=].extension[temperaturbedingungen].valueRange.high.value = -150
* processing[=].extension[temperature-miabis].valueCodeableConcept = $miabis-storage-temp#LN
* processing[=].procedure = $sct-no-ver#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T17:07:00+01:00"

* container.type = $sct-no-ver#83059008 "Tube, device (physical object)"
* container.capacity.value = 2 
* container.capacity.system = $UCUM
* container.capacity.code = #ml
* container.capacity.unit = "ml"
* container.specimenQuantity.value = 0.2
* container.specimenQuantity.system = $UCUM
* container.specimenQuantity.code = #ml
* container.specimenQuantity.unit = "ml"
* note.text = "Buffy-Coat Aliquots für Genomik-Analysen"