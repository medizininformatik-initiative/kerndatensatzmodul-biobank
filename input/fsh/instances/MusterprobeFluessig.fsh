Instance: MusterprobeFluessig
InstanceOf: MII_PR_Biobank_Specimen_Bioprobe
Title: "Musterprobe flüssig"
Usage: #example

* extension[probenebene] = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#PRIMÄRPROBE
* extension[gehoertZu].valueReference = Reference(Mustersammlung)
* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "12345"
* status = #available
* type.coding[+] = $SCT#122555007 "Venous blood specimen (specimen)"
* type.coding[+] = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs#WholeBlood "Whole blood"

* subject.reference = "Patient/mii-exa-test-data-patient-1"
* receivedTime = "2018-06-07T15:50:00+01:00"
* collection.collectedDateTime = "2018-06-07T15:54:00+01:00"
* collection.fastingStatusCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0916#NG "Not Given - Patient was not asked at the time of the procedure."

* collection.method = $SCT#22778000 "Venipuncture (procedure)"
* collection.bodySite = $SCT#128553008 "Structure of antecubital vein (body structure)"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].extension[temperature-miabis].valueCodeableConcept = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-storage-temperature-cs#RT "Room temperature"
* processing[=].procedure =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T15:54:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T16:27:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].extension[temperature-miabis].valueCodeableConcept = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-storage-temperature-cs#RT "Room temperature"
* processing[=].procedure =  $SCT#73373003 "Specimen centrifugation (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:27:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T16:37:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].extension[temperature-miabis].valueCodeableConcept = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-storage-temperature-cs#RT "Room temperature"
* processing[=].procedure =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:37:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T16:51:00+01:00"

* container.type = http://snomed.info/sct#83059008 "Tube, device (physical object)"
* container.capacity = 10 'ml'
* container.specimenQuantity = 10 'ml'
* container.additiveReference = Reference(Heparin)
