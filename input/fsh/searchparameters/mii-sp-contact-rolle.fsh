Instance: mii-sp-biobank-organization-contact-rolle
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Organization_Contact_Rolle"
* status = #active
* description = "Search Organization contacts by the rolle extension (CodeableConcept)"
* code = #contact-rolle
* base = #Organization
* type = #token
* expression = "Organization.contact.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/KontaktRolle').value.as(CodeableConcept)"
