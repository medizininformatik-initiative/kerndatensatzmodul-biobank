Instance: SPRECPrimaryContainerMap
InstanceOf: http://hl7.org/fhir/StructureDefinition/ConceptMap
Title: "SPREC 3.0 Primary Container Mapping"
Usage: #definition
Description: "Mapping der SPREC 3.0 Primary-Container-Containertypen auf die im Modul verwendeten SNOMED CT Codes."

* insert Version
* insert SP_Publisher

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/SPRECPrimaryContainerMap"
* title = "SPREC 3.0 Primary Container Mapping"
* status = #active

* group.target = "http://snomed.info/sct"

* insert InitMapping(#ACD, "Acid citrate dextrose")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(75399008, "Citric acid (substance\)")
* insert AddAdditiveMapping(412546005, "Sodium citrate (substance\)")
* insert AddAdditiveMapping(67079006, "Glucose (substance\)")
* insert AddAdditiveMapping(11713004, "Water (substance\)")

* insert InitMapping(#ADD, "Chemical additives/stabilizers")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(105590001, "Substance (substance\)")

* insert InitMapping(#CAT, "Serum tube without clot activator")
* insert AddMapping(83059008, "Tube\, device (physical object\)", #wider)

* insert InitMapping(#CPT, "Cell Preparation Tube citrate")
* insert AddMapping(83059008, "Tube\, device (physical object\)", #wider)
* insert AddAdditiveMapping(59351004, "Citrate (substance\)")
	
* insert InitMapping(#CPH, "Cell Preparation Tube heparin")
* insert AddMapping(83059008, "Tube\, device (physical object\)", #wider)
* insert AddAdditiveMapping(372877000, "Heparin (substance\)")

* insert InitMapping(#CSV, "Aldehyde-based stabilizer for CTCs")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(768750002, "Product containing aldehyde (product\)")

* insert InitMapping(#EDG, "EDTA and gel")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(69519002, "Ethylenediamine tetra-acetate (substance\)")

* insert InitMapping(#GLS, "Glass")
* insert AddMapping(76123001, "Glass tube\, device (physical object\)", #equivalent)
	
* insert InitMapping(#HEP, "Lithium heparin")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(85899009, "Lithium (substance\)")
* insert AddAdditiveMapping(372877000, "Heparin (substance\)")

* insert InitMapping(#HIR, "Hirudin")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(414407009, "Hirudin (substance\)")

* insert InitMapping(#LHB, "Lithium heparin and rubber plug")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(85899009, "Lithium (substance\)")
* insert AddAdditiveMapping(372877000, "Heparin (substance\)")
* insert AddAdditiveMapping(43230003, "Rubber (substance\)")

* insert InitMapping(#OMN, "Stool collection container with DNA stabilizer")	
* insert AddMapping(706047007, "Fecal specimen container (physical object\)", #wider)

* insert InitMapping(#PAX, "PAXgene blood RNA")
* insert AddMapping(702280006, "Evacuated blood collection tube\, ribonucleic acid stabilizer (physical object\)", #wider)

* insert InitMapping(#PED, "Potassium EDTA")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(69519002, "Ethylenediamine tetra-acetate (substance\)")
* insert AddAdditiveMapping(88480006, "Potassium (substance\)")

* insert InitMapping(#PET, "Polyethylene tube sterile")
* insert AddMapping(34234003:840560000=71463006\,840562008=261029002, "|Plastic tube\, device (physical object\)|:|Has compositional material| = |Polyethylene (substance\)|\,|Has device characteristic| = |Sterile (qualifier value\)|", #equivalent)

* insert InitMapping(#PI1, "S8820 protease inhibitor tablets or equivalent")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(372528003, "Substance with protease inhibitor mechanism of action (substance\)")

* insert InitMapping(#PIX, "Protease inhibitors")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(372528003, "Substance with protease inhibitor mechanism of action (substance\)")

* insert InitMapping(#PPS, "Polypropylene tube sterile")
* insert AddMapping(34234003:840560000=256633009\,840562008=261029002, "Plastic tube\, device (physical object\)|:|Has compositional material| = |Polypropylene (substance\)|\,|Has device characteristic| = |Sterile (qualifier value\)|", #equivalent)

* insert InitMapping(#SCI, "Sodium citrate")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(412546005, "Sodium citrate (substance\)")

* insert InitMapping(#SED, "Sodium EDTA")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(39972003, "Sodium (substance\)")
* insert AddAdditiveMapping(69519002, "Ethylenediamine tetra-acetate (substance\)")

* insert InitMapping(#SHP, "Sodium heparin")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(50045009, "Heparin sodium (substance\)")

* insert InitMapping(#SPO, "Sodium fluoride/potassium oxalate")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(6910009, "Sodium fluoride (substance\)")
* insert AddAdditiveMapping(34261003, "Potassium oxalate (substance\)")
