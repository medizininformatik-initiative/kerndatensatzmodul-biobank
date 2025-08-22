Profile: ProfileObservationDNAKonzentration
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: Observation-DNAKonzentration
Title: "Profile - Observation - DNAKonzentration"
Description: "Die DNA-Konzentration einer Probe"

* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40

* code 1..1 MS
* code = $LOINC#72496-3 "DNA double strand [Mass/volume] in Specimen"
* focus 1..1 MS
* focus only Reference(Specimen)
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system 1..1
* valueQuantity.code from MII_VS_Biobank_DNA_Concentration_Units_UCUM (required)

* effective[x] 0..1 MS
