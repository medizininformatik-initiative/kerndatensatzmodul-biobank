Instance: DNAConcentrationObs1
InstanceOf: MII_PR_Biobank_Observation_DNA_Konzentration
Title: "DNA Konzentration Aliquot"
Usage: #example

* status = #final
* code = $LOINC#72496-3 "DNA double strand [Mass/volume] in Specimen"
* focus = Reference(AliquotgruppeDNA)
* valueQuantity.value = 40
* valueQuantity.unit = "ng/µL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #ng/ul
* effectiveDateTime = "2018-09-07T13:40:00+01:00"
