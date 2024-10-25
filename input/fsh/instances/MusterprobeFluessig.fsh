Instance: MusterprobeFluessig
InstanceOf: Specimen
Title: "Musterprobe flüssig"
Usage: #example

* extension[gehoertZu].valueReference = Reference(Mustersammlung)
* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "12345"
* status = #available
* type = http://snomed.info/sct#122555007 "Venous blood specimen (specimen)"
* subject.reference = "Patient/12345"
* collection.collectedDateTime = "2018-06-07T15:54:00+01:00"
* collection.fastingStatusCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0916#NG "Not Given - Patient was not asked at the time of the procedure."

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].procedure =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T15:54:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T16:27:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].procedure =  $SCT#73373003 "Specimen centrifugation (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:27:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T16:37:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].procedure =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:37:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T16:51:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = -85
* processing[=].extension[temperaturbedingungen].valueRange.high.value = -60
* processing[=].procedure.coding[0] =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].procedure.coding[1] =  http://snomed.info/sct#27872000 "Specimen freezing (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:51:00+01:00"

* container.type = http://snomed.info/sct#83059008 "Tube, device (physical object)"
* container.capacity = 10 'ml'
* container.specimenQuantity = 10 'ml'
* container.additiveReference = Reference(Heparin)
