Profile: ProfileObservationProliferation
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: Observation-Proliferation
Title: "Profile - Observation - Proliferation"
Description: "Proliferation einer Zelline oder eines Organiods"

* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40

* code 1..1 MS
* code = http://purl.obolibrary.org/obo/GO_#0008283 "cell population proliferation"
* focus 1..1 MS
* focus only Reference(Specimen)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from ValueSetCellLineProliferation (extensible)
