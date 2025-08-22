Instance: MusterprobeGewebe
InstanceOf: MII_PR_Biobank_Specimen_Bioprobe
Title: "Musterprobe Gewebe"
Usage: #example

* extension[gehoertZu].valueReference = Reference(Mustersammlung)
* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "6789"
* status = #available
* type = http://snomed.info/sct#399492000 "Tissue specimen from lung (specimen)"
* subject.reference = "Patient/12345"

* collection.extension[einstellungBlutversorgung].valueDateTime = "2018-06-08T15:32:00+01:00"
* collection.collectedDateTime = "2018-06-08T15:34:00+01:00"
* collection.fastingStatusDuration = 4 'h'
* collection.bodySite = http://snomed.info/sct#14559000 "Structure of apex of left lung (body structure)"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].procedure =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-08T15:34:00+01:00"
* processing[=].timePeriod.end = "2018-06-08T15:42:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = -85
* processing[=].extension[temperaturbedingungen].valueRange.high.value = -60
* processing[=].procedure.coding[0] =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].procedure.coding[1] = $SCT#27872000 "Specimen freezing (procedure)"
* processing[=].timePeriod.start = "2018-06-08T15:42:00+01:00"

* container.type = http://snomed.info/sct#83059008 "Tube, device (physical object)"
