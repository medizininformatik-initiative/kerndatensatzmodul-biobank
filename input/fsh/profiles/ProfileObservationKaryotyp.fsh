Profile: ProfileObservationKaryotyp
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: Observation-Karyotyp
Title: "Profile - Observation - Karyotyp"
Description: "Der an einer Zelline oder einem Organiod festgestellte Karyotyo"

* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40

* code 1..1 MS
* code = $SCT#734840008 "Karyotype (cell structure)"
* focus 1..1 MS
* focus only Reference(Specimen)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from ValueSetKaryotyp (extensible)

* effective[x] 1..1 MS
