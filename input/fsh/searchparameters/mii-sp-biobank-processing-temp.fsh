Instance: mii-sp-biobank-specimen-processing-temp
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Processing-Temp"
* status = #active
* description = "Search specimens by the Temperaturbedingungen extension (Range)"
* code = #processing-temp
* base = #Specimen
* type = #quantity
* expression = "Specimen.processing.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen').value.as(Range)"
