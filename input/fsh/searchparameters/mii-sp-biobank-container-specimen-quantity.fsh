Instance: mii-sp-biobank-specimen-container-specimen-quantity
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Container_Specimen_Quantity"
* status = #active
* description = "Search specimens by container specimenQuantity"
* code = #container-specimen-quantity
* base = #Specimen
* type = #quantity
* expression = "Specimen.container.specimenQuantity"
