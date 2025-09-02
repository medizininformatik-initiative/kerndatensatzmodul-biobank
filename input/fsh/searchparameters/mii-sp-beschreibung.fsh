Instance: mii-sp-biobank-organization-beschreibung
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Organization_Beschreibung"
* status = #active
* description = "Search Organization by the beschreibung extension (string)"
* code = #beschreibung
* base = #Organization
* type = #string
* expression = "Organization.extension.where(url='https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-organization-description-extension').value.as(string)"