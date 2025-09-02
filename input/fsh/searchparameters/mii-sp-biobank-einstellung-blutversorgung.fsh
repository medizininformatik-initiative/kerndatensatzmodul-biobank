Instance: mii-sp-biobank-specimen-einstellung-blutversorgung
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Einstellung_Blutversorgung"
* status = #active
* description = "Search specimens by the EinstellungBlutversorgung extension (dateTime)"
* code = #einstellung-blutversorgung
* base = #Specimen
* type = #date
* expression = "Specimen.collection.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung').value.as(dateTime)"
