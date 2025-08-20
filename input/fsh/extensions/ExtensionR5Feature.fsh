Extension: MII_EX_Biobank_Feature_R5
Id: mii-ex-biobank-feature-r5
Title: "MII EX Biobank Feature R5"
Description: "Die Extension ermöglicht es im Specimen das feature aus R5 zu nutzen."
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"

* insert ExtensionContext(Specimen)
* ^experimental = false
//Extension
* extension contains
    type 1..1 MS and
    description 1..1 MS
    
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from http://hl7.org/fhir/ValueSet/body-site (example)
* extension[description].value[x] only string