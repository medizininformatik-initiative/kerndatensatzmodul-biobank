Profile: ProfileObservationQualiaetspruefung
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: Observation-Qualitaetspruefung
Title: "Profile - Observation - Qualitätsprüfung"
Description: "Art und Ergebnis einer an einer Zelline oder einem Organiod durchgeführten Qualitätsprüfung"

* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40

* code 1..1 MS
* code = $SCT#386404008 "Quality monitoring (procedure)"
* focus 1..1 MS
* focus only Reference(Specimen)
* value[x] 0..0
* effective[x] 1..1 MS

* component 2..*
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "$this.code"
* component ^slicing.rules = #open
* component contains type 1..1 MS and result 1..1 MS
* component[type].code = $SCT#246423001 "Test protocol used (attribute)"
* component[type].value[x] only CodeableConcept or string
* component[result].code = $SCT#79409006 "Resulting in (attribute)"
* component[result].value[x] only CodeableConcept