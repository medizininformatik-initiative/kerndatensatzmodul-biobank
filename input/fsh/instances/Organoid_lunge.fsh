Instance: OrganoidLunge
InstanceOf: MII_PR_Biobank_Specimen_Zellinie_Organoid
Title: "Organoid Lungenbiopsie"
Usage: #example

* extension[kulturprotokoll].valueReference = Reference(Kulturprotokoll)

* extension[modifikationen].extension[artDerModifikation].valueCodeableConcept = http://purl.obolibrary.org/obo/clo.owl#CLO:0037375 "derived from cell with knockout gene"
* extension[modifikationen].extension[zielGen].valueCoding = http://www.genenames.org#TP53 "Tumor protein p53"
* extension[modifikationen].extension[protokoll].valueReference = Reference(ProtocolCRISPRTP53)

* extension[anzahlPassagen].valueInteger = 3

* parent = Reference(MusterprobeGewebe)
* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "6789-ORG-1"
* status = #available
* type.coding[+] = https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-sample-type#Organoid "Organoids"
* type.coding[+] = $SCT#123038009 "Specimen (specimen)"
* subject.reference = "Patient/mii-exa-test-data-patient-1"
* collection.collectedDateTime = "2018-06-08T15:34:00+01:00"


* container.type = http://snomed.info/sct#83059008 "Tube, device (physical object)"
* container.specimenQuantity = 1 'ml'

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 37
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 37
* processing[=].procedure = $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-20T10:00:00+01:00"
* processing[=].timePeriod.end = "2018-06-27T10:00:00+01:00"
