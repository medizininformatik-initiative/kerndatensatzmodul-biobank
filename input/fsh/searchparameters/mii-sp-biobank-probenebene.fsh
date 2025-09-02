Instance: mii-sp-biobank-specimen-probenebene
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_bene"
* status = #active
* description = "Search specimens by the mii-ex-biobank-ebene extension (Coding)"
* code = #probenebene
* base = #Specimen
* type = #token
* expression = "Specimen.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene').value.as(Coding)"
