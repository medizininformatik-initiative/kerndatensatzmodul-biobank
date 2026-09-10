Instance: mii-sp-biobank-specimen-feature
InstanceOf: SearchParameter
Usage: #definition

* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* name = "MII_SP_Biobank_Specimen_Feature"
* status = #active
* experimental = false
* date = "2026-09-10"
* description = "Suchparameter für Specimen.feature.type"
* code = #feature
* base = #Specimen
* type = #token
* expression = "Specimen.feature.type"