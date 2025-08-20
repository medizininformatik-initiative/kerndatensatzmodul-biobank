Instance: SPRECPrimaryContainerMap
InstanceOf: http://hl7.org/fhir/StructureDefinition/ConceptMap
Title: "SPREC 4.0 Primary Container Mapping"
Usage: #definition
Description: "Mapping der SPREC 4.0 Primary-Container-Containertypen auf die im Modul verwendeten SNOMED CT Codes."

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/SPRECPrimaryContainerMap"
* title = "SPREC 4.0 Primary Container Mapping"
* status = #active

* group.target = "http://snomed.info/sct"

* insert InitMapping(#ACD, "Acid citrate dextrose")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(75399008, "Citric acid (substance\)")
* insert AddAdditiveMapping(412546005, "Sodium citrate (substance\)")
* insert AddAdditiveMapping(67079006, "Glucose (substance\)")
* insert AddAdditiveMapping(11713004, "Water (substance\)")

* insert InitMapping(#CAT, "Serum separator tube without clot activator")
* insert AddMapping(702256007, "Non-evacuated blood collection tube\, no additive (physical objec\)", #narrower)
* group.element[=].target[=].comment = "Use only for non-evacuated blood collection tubes."
* insert AddMapping(702278000, "Evacuated blood collection tube\, no additive and metal-free (physical object\)", #narrower)
* group.element[=].target[=].comment = "Use only for metal-free evacuated blood collection tubes."

* insert InitMapping(#CPD, "Citrate phosphate dextrose")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(412546005, "Sodium citrate (substance\)")
* insert AddAdditiveMapping(259296007, "Phosphate (substance\)")
* insert AddAdditiveMapping(67079006, "Glucose (substance\)")
* insert AddAdditiveMapping(11713004, "Water (substance\)")

* insert InitMapping(#CIF, "Citrate fluoride")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(412546005, "Sodium citrate (substance\)")
* insert AddAdditiveMapping(372639009, "Fluoride (substance\)")
* insert AddAdditiveMapping(11713004, "Water (substance\)")

* insert InitMapping(#CPT, "Cell Preparation Tube citrate")
* insert AddMapping(706052002, "Evacuated blood collection tube (physical object\)", #wider)
* insert AddAdditiveMapping(59351004, "Citrate (substance\)")
	
* insert InitMapping(#CPH, "Cell Preparation Tube heparin")
* insert AddMapping(706052002, "Evacuated blood collection tube (physical object\)", #wider)
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
* insert AddMapping(702284002, "Non-evacuated blood collection tube\, lithium heparin (physical object\)", #narrower)
* group.element[=].target[=].comment = "Use only for non-evacuated blood collection tubes."
* insert AddAdditiveMapping(85899009, "Lithium (substance\)")
* insert AddAdditiveMapping(372877000, "Heparin (substance\)")

* insert InitMapping(#HIR, "Hirudin")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(414407009, "Hirudin (substance\)")

* insert InitMapping(#LHB, "Lithium heparin and rubber plug")
* insert AddMapping(702284002, "Non-evacuated blood collection tube\, lithium heparin (physical object\)", #wider)
* insert AddAdditiveMapping(85899009, "Lithium (substance\)")
* insert AddAdditiveMapping(372877000, "Heparin (substance\)")
* insert AddAdditiveMapping(43230003, "Rubber (substance\)")

* insert InitMapping(#LHG, "Lithium heparin and gel")
* insert AddMapping(767390000, "Evacuated blood collection tube with heparin lithium and gel separator (physical object\)", #narrower)
* group.element[=].target[=].comment = "Use only for evacuated blood collection tubes."
* insert AddMapping(702285001, "Sterile lithium heparin non-evacuated blood collection tube with gel separator (physical object\)", #narrower)
* group.element[=].target[=].comment = "Use only for sterile non-evacuated blood collection tubes."
* insert AddMapping(702300005, "Non-evacuated blood collection tube\, lithium heparin/gel separator\, non-sterile (physical object\)", #narrower)
* group.element[=].target[=].comment = "Use only for non-sterile non-evacuated blood collection tubes."
* insert AddAdditiveMapping(85899009, "Lithium (substance\)")
* insert AddAdditiveMapping(372877000, "Heparin (substance\)")

* insert InitMapping(#ORG, "Oragene collection container or equivalent")
* insert AddMapping(706058003, "Secretory specimen container (physical object\)", #equivalent)

* insert InitMapping(#OMN, "Stool collection container with DNA stabilizer")	
* insert AddMapping(706047007, "Fecal specimen container (physical object\)", #wider)

* insert InitMapping(#PAX, "PAXgene blood RNA")
* insert AddMapping(702280006, "Evacuated blood collection tube\, ribonucleic acid stabilizer (physical object\)", #wider)

* insert InitMapping(#PED, "Potassium EDTA")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(69519002, "Ethylenediamine tetra-acetate (substance\)")
* insert AddAdditiveMapping(88480006, "Potassium (substance\)")

* insert InitMapping(#PET, "Polyethylene tube sterile")
* insert AddMapping(702269006:840560000=71463006, "|General specimen container\, no additive\, sterile (physical object\)|:|Has compositional material| = |Polyethylene (substance\)|", #equivalent)

* insert InitMapping(#PI1, "S8820 protease inhibitor tablets or equivalent")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(372528003, "Substance with protease inhibitor mechanism of action (substance\)")

* insert InitMapping(#PIX, "Protease inhibitors")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(372528003, "Substance with protease inhibitor mechanism of action (substance\)")

* insert InitMapping(#PPS, "Polypropylene tube sterile")
* insert AddMapping(702269006:840560000=256633009, "General specimen container\, no additive\, sterile (physical object\)|:|Has compositional material| = |Polypropylene (substance\)|", #equivalent)

* insert InitMapping(#SCI, "Sodium citrate")
* insert AddMapping(702296009, "Non-evacuated blood collection tube\, sodium citrate (physical object\)", #narrower)
* group.element[=].target[=].comment = "Use only for non-evacuated blood collection tubes."
* insert AddAdditiveMapping(412546005, "Sodium citrate (substance\)")

* insert InitMapping(#SED, "Sodium EDTA")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(39972003, "Sodium (substance\)")
* insert AddAdditiveMapping(69519002, "Ethylenediamine tetra-acetate (substance\)")

* insert InitMapping(#SHP, "Sodium heparin")
* insert AddMapping(767382000, "Evacuated blood collection tube with heparin sodium (physical object\) ", #narrower)
* group.element[=].target[=].comment = "Use only for evacuated blood collection tubes."
* insert AddAdditiveMapping(50045009, "Heparin sodium (substance\)")

* insert InitMapping(#SPO, "Sodium fluoride/potassium oxalate")
* insert AddMapping(702287009, "Non-evacuated blood collection tube\, potassium oxalate/sodium fluoride (physical object\) ", #narrower)
* group.element[=].target[=].comment = "Use only for non-evacuated blood collection tubes."
* insert AddAdditiveMapping(6910009, "Sodium fluoride (substance\)")
* insert AddAdditiveMapping(34261003, "Potassium oxalate (substance\)")

* insert InitMapping(#SST, "Serum separator tube with clot activator")
* insert AddMapping(702297000, "Non-evacuated blood collection tube\, clot activator (physical object\) ", #narrower)
* group.element[=].target[=].comment = "Use only for non-evacuated blood collection tubes."
* insert AddMapping(767384004, "Evacuated blood collection tube with clot activator (physical object\) ", #narrower)
* group.element[=].target[=].comment = "Use only for evacuated blood collection tubes."

* insert InitMapping(#TEM, "Tempus tube")
* insert AddMapping(702280006, "Evacuated blood collection tube\, ribonucleic acid stabilizer (physical object\)", #wider)
