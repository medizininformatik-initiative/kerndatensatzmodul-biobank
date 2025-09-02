Instance: mii-sp-biobank-specimen-anzahl-passagen
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Anzahl_Passagen"
* status = #active
* description = "Search specimens by the mii-ex-biobank-anzahl-passagen extension (integer)"
* code = #anzahl-passagen
* base = #Specimen
* type = #number
* expression = "Specimen.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-passagen').value.as(integer)"
