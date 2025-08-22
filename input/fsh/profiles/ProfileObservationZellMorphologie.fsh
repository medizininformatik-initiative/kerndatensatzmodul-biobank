Profile: ProfileObservationMorphologie
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: Observation-Morphologie
Title: "Profile - Observation - Morphologie"
Description: "Morphologie einer Zelline oder eines Organiods"

* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40

* code 1..1 MS
* code = http://purl.obolibrary.org/obo/PATO_#0010006 "cell morphology"
* focus 1..1 MS
* focus only Reference(Specimen)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Biobank_Cellline_Morphology_SCT (extensible)
