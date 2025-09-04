Instance: QualitaetspruefungPlasma
InstanceOf: MII_PR_Biobank_Observation_Qualitaetspruefung
Title: "Qualitätsprüfung Plasma Aliquotgruppe"
Usage: #example

* status = #final
* code = $SCT#386404008 "Quality monitoring (procedure)"
* focus = Reference(AliquotgruppePlasma)
* effectiveDateTime = "2018-06-08T09:04:00+01:00"

* component[type].valueCodeableConcept = $LOINC#46425-5 "Lipemic interference index of Serum or Plasma"
* component[result].valueQuantity.value = 3
* component[result].valueQuantity.unit = "[arb'U]/mL"
* component[result].valueQuantity.system = "http://unitsofmeasure.org"
* component[result].valueQuantity.code = #[arb'U]/mL
