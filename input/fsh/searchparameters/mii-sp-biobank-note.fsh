Instance: mii-sp-biobank-specimen-note
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Note"
* status = #active
* description = "Search specimens by note text"
* code = #note
* base = #Specimen
* type = #string
* expression = "Specimen.note.text"
