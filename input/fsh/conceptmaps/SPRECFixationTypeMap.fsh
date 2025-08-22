Instance: mii-cm-biobank-fixation-type-sprec-sct
InstanceOf: http://hl7.org/fhir/StructureDefinition/ConceptMap
Title: "MII CM Biobank Fixation Type SPREC 4.0 SCT"
Usage: #definition
Description: "Mapping der SPREC 4.0 Fixation Types auf die im Modul verwendeten SNOMED CT Codes für Zusatzstoffe."

* insert Version
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SNOMED_SPREC_Copyright_CM

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/mii-cm-biobank-fixation-type-sprec-sct"
* status = #active

* group.source = "http://www.isber.org/sprec/fixation-stabilization-type"
* group.target = "http://snomed.info/sct"

* insert InitMapping(#ACA, "Nonaldehyde with acetic acid")
* insert AddMapping(2869004, "Acetic acid (substance\)", #wider)

* insert InitMapping(#ALD, "Aldehyde based")
* insert AddMapping(768750002, "Product containing aldehyde (product\)", #wider)

* insert InitMapping(#ETH, "Alcohol based")
* insert AddMapping(333164008, "Product containing alcohol (product\)", #wider)

* insert InitMapping(#FOR, "Nonbuffered formalin")
* insert AddMapping(431510009, "Formalin (substance\)", #wider)

* insert InitMapping(#NBF, "Neutral buffered formalin")
* insert AddMapping(434162003, "Neutral buffered formalin (substance\)", #equivalent)

* insert InitMapping(#OCT, "Optimum cutting temperature medium")
* insert AddMapping(433469005, "Frozen section embedding medium (substance\)", #wider)
