Instance: mii-sp-biobank-specimen-feature
InstanceOf: SearchParameter
Usage: #definition

* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* name = "MII_SP_Biobank_Specimen_Feature"
* status = #active
* experimental = false
* date = "2026-09-10"
* description = "Suchparameter für das Specimen-Feature (R5-Backport-Extension) nach Feature-Typ"
* code = #feature
* base = #Specimen
* type = #token
* expression = "Specimen.extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature').extension('type').value.as(CodeableConcept)"
