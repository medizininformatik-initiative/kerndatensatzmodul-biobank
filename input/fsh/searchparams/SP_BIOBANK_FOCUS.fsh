Instance: mii-sp-biobank-specimen-focus
InstanceOf: SearchParameter
Usage: #definition

* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Focus"
* status = #active
* experimental = false
* date = "2026-09-10"
* description = "Suchparameter für die Specimen-Focus-Extension nach der referenzierten Fokus-Ressource"
* code = #focus
* base = #Specimen
* type = #reference
* expression = "Specimen.extension('http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-focus').value.as(Reference)"
