Instance: QualitaetspruefungBuffyCoat
InstanceOf: MII_PR_Biobank_Observation_Qualitaetspruefung
Title: "Qualitätsprüfung Buffy-Coat Aliquotgruppe"
Usage: #example

* status = #final
* code = $SCT#386404008 "Quality monitoring (procedure)"
* focus = Reference(AliquotgruppeBuffyCoat)
* effectiveDateTime = "2018-06-08T09:00:00+01:00"

* component[type].valueCodeableConcept = $SCT#401297005 "Hemolysis screening test (procedure)"
* component[result].valueCodeableConcept = $LOINC#LA10392-1 "Pass"
