Instance: mii-sp-biobank-specimen-kulturprotokoll
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Kulturprotokoll"
* status = #active
* description = "Search specimens by the mii-ex-biobank-kulturprotokoll extension (Reference)"
* code = #kulturprotokoll
* base = #Specimen
* type = #reference
* expression = "Specimen.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-kulturprotokoll').value.as(Reference)"
