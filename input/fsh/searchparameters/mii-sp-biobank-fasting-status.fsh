Instance: mii-sp-biobank-specimen-fasting-status
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Fasting_Status"
* status = #active
* description = "Search specimens by fasting status (CodeableConcept only)"
* code = #fasting-status
* base = #Specimen
* type = #token
* expression = "Specimen.collection.fastingStatus.as(CodeableConcept)"