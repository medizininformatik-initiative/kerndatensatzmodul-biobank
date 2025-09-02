Instance: mii-sp-biobank-organization-collection-design
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Organization_CollectionDesign"
* status = #active
* description = "Search Organization by the collectionDesign extension (CodeableConcept)"
* code = #collection-design
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-collection-design-extension').value.as(CodeableConcept)"