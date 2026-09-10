Instance: mii-sp-biobank-infektiositaetsstatus
InstanceOf: SearchParameter
Usage: #definition

* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* name = "MII_SP_Biobank_Infektiositaetsstatus"
* status = #active
* experimental = false
* date = "2026-09-10"
* description = "Suchparameter für den Infektiositätsstatus (Extension) an Specimen"
* code = #infektiositaetsstatus
* base = #Specimen
* type = #token
* expression = "Specimen.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus').value.as(CodeableConcept)"