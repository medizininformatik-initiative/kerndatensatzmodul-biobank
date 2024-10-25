Instance: SPRECLongTermStorageMap
InstanceOf: http://hl7.org/fhir/StructureDefinition/ConceptMap
Title: "SPREC 3.0 Long-Term Storage Containertypen Mapping"
Usage: #definition
Description: "Mapping der SPREC 3.0 Long-Term Storage Containertypen auf die im Modul verwendeten SNOMED CT Codes."

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/SPRECLongTermStorageMap"
* title = "SPREC 3.0 Long-Term Storage Mapping"
* status = #active

* group.target = "http://snomed.info/sct"

* insert InitMapping(#A ,"PP tube")
* insert AddMapping( 34234003:840560000=256633009 , "Plastic tube \, device (physical object\): Has compositional material=Polypropylene (substance\)" , #wider)
* insert InitMapping(#B ,"PP tube")
* insert AddMapping( 34234003:840560000=256633009 , "Plastic tube \, device (physical object\): Has compositional material=Polypropylene (substance\)" , #wider)
* insert InitMapping(#V ,"PP tube")
* insert AddMapping( 34234003:840560000=256633009 , "Plastic tube \, device (physical object\): Has compositional material=Polypropylene (substance\)" , #wider)
* insert InitMapping(#J ,"PP tube")
* insert AddMapping( 34234003:840560000=256633009 , "Plastic tube \, device (physical object\): Has compositional material=Polypropylene (substance\)" , #wider)
* insert InitMapping(#K ,"PP tube")
* insert AddMapping( 34234003:840560000=256633009 , "Plastic tube \, device (physical object\): Has compositional material=Polypropylene (substance\)" , #wider)
* insert InitMapping(#S ,"PP tube")
* insert AddMapping( 34234003:840560000=256633009 , "Plastic tube \, device (physical object\): Has compositional material=Polypropylene (substance\)" , #wider)
* insert InitMapping(#T ,"PP tube")
* insert AddMapping( 34234003:840560000=256633009 , "Plastic tube \, device (physical object\): Has compositional material=Polypropylene (substance\)" , #wider)
* insert InitMapping(#W ,"PP tube")
* insert AddMapping( 34234003:840560000=256633009 , "Plastic tube \, device (physical object\): Has compositional material=Polypropylene (substance\)" , #wider)

* insert InitMapping(#C, "Cryotube")
* insert AddMapping(83059008, "Tube\, device (physical object\)", #wider)
* insert InitMapping(#D, "Cryotube")
* insert AddMapping(83059008, "Tube\, device (physical object\)", #wider)
* insert InitMapping(#E, "Cryotube")
* insert AddMapping(83059008, "Tube\, device (physical object\)", #wider)
* insert InitMapping(#N, "Cryotube")
* insert AddMapping(83059008, "Tube\, device (physical object\)", #wider)

* insert InitMapping(#F, "Straw")
* insert AddMapping(464601003, "Tissue storage straw (physical object\)", #narrower)
* insert AddComment("Der SNOMED Code legt gilt nur für Tissue straws.")
* insert InitMapping(#G, "Straw")
* insert AddMapping(464601003, "Tissue storage straw (physical object\)", #narrower)
* insert AddComment("Der SNOMED Code legt gilt nur für Tissue straws.")
* insert InitMapping(#H, "Straw")
* insert AddMapping(464601003, "Tissue storage straw (physical object\)", #narrower)
* insert AddComment("Der SNOMED Code legt gilt nur für Tissue straws.")
* insert InitMapping(#I, "Straw")
* insert AddMapping(464601003, "Tissue storage straw (physical object\)", #narrower)
* insert AddComment("Der SNOMED Code legt gilt nur für Tissue straws.")
* insert InitMapping(#O, "Straw")
* insert AddMapping(464601003, "Tissue storage straw (physical object\)", #narrower)
* insert AddComment("Der SNOMED Code legt gilt nur für Tissue straws.")

* insert InitMapping(#L, "Microplate well")
* insert AddMapping(434822004,  "Specimen well (physical object\)", #wider)
* insert InitMapping(#M, "Microplate well")
* insert AddMapping(434822004,  "Specimen well (physical object\)", #wider)

* insert InitMapping(#P, "Paraffin block")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(311731000, "Paraffin wax (substance\)")
* insert InitMapping(#U, "Paraffin block")
* group.element[=].target.equivalence = #unmatched
* insert AddAdditiveMapping(311731000, "Paraffin wax (substance\)")

* insert InitMapping(#Q, "Bag")
* insert AddMapping(463490008, "Medical bag (physical object\)", #equivalent)

* insert InitMapping(#Z, "Other")
* insert AddMapping(706437002, "Container (physical object\)", #wider)
