Instance: mii-sp-biobank-organization-collection-setting
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Organization_CollectionSetting"
* status = #active
* description = "Search Organization by the collectionSetting extension (CodeableConcept)"
* code = #collection-setting
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-collection-setting-extension').value.as(CodeableConcept)"
