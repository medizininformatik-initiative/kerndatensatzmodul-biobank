Instance: AliquotgruppeDNA
InstanceOf: MII_PR_Biobank_Specimen_Bioprobe
Title: "DNA Aliquotgruppe"
Usage: #example

* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#ALIQUOTGRUPPE "Aliquotgruppe"
* parent = Reference(AliquotBuffyCoat2)
* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "12345-DNA-1"
* status = #available
* type.coding[+] = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs#DNA "DNA"
* type.coding[+] = $SCT#258566005 "Deoxyribonucleic acid specimen (specimen)"

* subject.reference = "Patient/mii-exa-test-data-patient-1"
* collection.collectedDateTime = "2018-06-07T15:54:00+01:00"

* container.type = http://snomed.info/sct#83059008 "Tube, device (physical object)"
* container.capacity = 0.5 'ml'
* container.specimenQuantity = 0.05 'ml'
* extension[anzahlAliquots].valueInteger = 2
* note.text = "DNA Aliquots gewonnen aus Buffy-Coat"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = -80
* processing[=].extension[temperaturbedingungen].valueRange.high.value = -70
* processing[=].extension[temperature-miabis].valueCodeableConcept = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-storage-temperature-cs#-60to-85 "between -60 and -85 degrees Celsius"
* processing[=].procedure = $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-09-07T13:55:00+01:00"
