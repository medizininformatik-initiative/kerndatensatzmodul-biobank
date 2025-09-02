Instance: mii-sp-biobank-specimen-anzahl-aliquots
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Anzahl_Aliquots"
* status = #active
* description = "Search specimens by the mii-ex-biobank-anzahl-aliquots extension (integer)"
* code = #anzahl-aliquots
* base = #Specimen
* type = #number
* expression = "Specimen.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-aliquots').value.as(integer)"
