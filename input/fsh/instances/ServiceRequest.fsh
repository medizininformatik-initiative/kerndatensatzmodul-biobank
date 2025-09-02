Instance: GewebeBiopsie
InstanceOf: ServiceRequest
Title: "Needle Biopsy Lung - Biobank"
Usage: #example

* status = #completed
* intent = #order
* code.coding[+] = $SCT#274319000 "Needle biopsy of lung (procedure)"
* subject.reference = "Patient/mii-exa-test-data-patient-1"
* authoredOn = "2018-06-08T15:30:00+01:00"
* note.text = "ServiceRequest zur Entnahme einer Lungenbiopsie für ein Organoid"
