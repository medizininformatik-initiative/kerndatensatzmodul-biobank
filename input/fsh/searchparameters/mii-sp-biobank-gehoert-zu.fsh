Instance: mii-sp-biobank-specimen-gehoert-zu
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Gehoert_Zu"
* status = #active
* description = "Search specimens by the VerwaltendeOrganisation extension (Reference)"
* code = #gehoert-zu
* base = #Specimen
* type = #reference
* expression = "Specimen.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation').value.as(Reference)"
