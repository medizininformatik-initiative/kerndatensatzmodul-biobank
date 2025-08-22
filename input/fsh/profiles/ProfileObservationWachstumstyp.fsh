Profile: ProfileObservationWachstumstyp
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: Observation-Wachstumstyp
Title: "Profile - Observation - Wachstumstyp"
Description: "Wachstumstyp einer Zelline oder eines Organiods"

* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40

* code 1..1 MS
* code = $CLO#0000030 "cell culture growth mode"
* focus 1..1 MS
* focus only Reference(Specimen)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Biobank_Wachstumpstyp_CLO (extensible)
