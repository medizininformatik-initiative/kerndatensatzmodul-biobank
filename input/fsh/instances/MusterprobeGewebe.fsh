Instance: MusterprobeGewebe
InstanceOf: MII_PR_Biobank_Specimen_Bioprobe
Title: "Musterprobe Gewebe"
Usage: #example

* extension[gehoertZu].valueReference = Reference(Mustersammlung)
* extension[festgestellteDiagnose].valueReference = Reference(Diagnose/mii-exa-test-data-patient-1-diagnose-1)
* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#PRIMÄRPROBE "Primärprobe"
* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#ALIQUOTGRUPPE "Aliquotgruppe"

* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "6789"
* status = #available
* type.coding[miabis-type] = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs#TissueFreshFrozen "Tissue (fresh frozen)"
* type.coding[sct] = $SCT#16214371000119104 "Specimen from lung obtained by needle biopsy (specimen)"
* subject.reference = "Patient/mii-exa-test-data-patient-1"

* receivedTime = "2018-06-08T15:43:00+01:00"
* request = Reference(GewebeBiopsie)



* collection.extension[einstellungBlutversorgung].valueDateTime = "2018-06-08T15:32:00+01:00"
* collection.collectedDateTime = "2018-06-08T15:34:00+01:00"
* collection.fastingStatusDuration = 4 'h'
* collection.bodySite = $SCT#14559000 "Structure of apex of left lung (body structure)"
* collection.method = $SCT#274319000 "Needle biopsy of lung (procedure)"


* processing[lagerprozess].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[lagerprozess].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[lagerprozess].extension[temperature-miabis].valueCodeableConcept = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-storage-temperature-cs#RT "Room temperature"
* processing[lagerprozess].procedure =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[lagerprozess].timePeriod.start = "2018-06-08T15:34:00+01:00"
* processing[lagerprozess].timePeriod.end = "2018-06-08T15:42:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = -85
* processing[=].extension[temperaturbedingungen].valueRange.high.value = -60
* processing[=].extension[temperature-miabis].valueCodeableConcept.coding[0] = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-storage-temperature-cs#-60to-85 "between -60 and -85 degrees Celsius"
* processing[=].procedure.coding[+] =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].procedure.coding[+] = $SCT#27872000 "Specimen freezing (procedure)"
* processing[=].timePeriod.start = "2018-06-08T15:49:00+01:00"

* container.type = http://snomed.info/sct#83059008 "Tube, device (physical object)"
* container.specimenQuantity.value = 5
* container.specimenQuantity.system = $UCUM
* container.specimenQuantity.code = #g
* container.specimenQuantity.unit = "g"
