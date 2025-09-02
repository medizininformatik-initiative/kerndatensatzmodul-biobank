Instance: mii-sp-biobank-specimen-container-capacity
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Container_Capacity"
* status = #active
* description = "Search specimens by container capacity"
* code = #container-capacity
* base = #Specimen
* type = #quantity
* expression = "Specimen.container.capacity"
