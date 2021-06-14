Alias: $SCT = http://snomed.info/sct

Profile: ProfileSpecimenBioprobe
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: ProfileSpecimenBioprobe
Title: "Profile - Specimen- Bioprobe"
Description: "Abbildung einer MII Bioprobe"

* identifier and type and container.specimenQuantity and status and note and parent and container.type and container.capacity 
and container.additive[x] and collection.collected[x] and collection.bodySite and collection.fastingStatus[x] 
and processing.timePeriod and processing.procedure and processing.additive MS

//Bioprobe

* extension contains ExtensionDiagnose named diagnose 0..1 MS and ExtensionVerwaltendeOrganisation named gehoertZu 1..1 MS

* status 1..1

* type 1..1
* type.coding ^slicing.discriminator.type = #pattern
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open

* type.coding contains sct 1..*
* type.coding[sct] from ValueSetProbenart (extensible)
* type.coding[sct].system = $SCT

* subject 1..1
* subject only Reference(Patient)

//Primärcontainer

* container.type from ValueSetContainertyp (extensible)
* container.type 1..1

//Additiv: Wie ja/nein? Substance vs CodeableConcept? Profile auf Substance?
* container.additiveCodeableConcept from ValueSetAdditive (extensible)
* container.additiveReference only Reference(ProfileSubstanceAdditiv)

//Probenentnahme -> Entnahme-ID?

* collection 1..1

* collection.extension contains ExtensionEinstellungBlutversorgung named einstellungBlutversorgung 0..1 MS

* collection.fastingStatusCodeableConcept from 	http://terminology.hl7.org/ValueSet/v2-0916 (required)

* collection.bodySite obeys mii-bb-1

* collection.bodySite.coding ^slicing.discriminator.type = #pattern
* collection.bodySite.coding ^slicing.discriminator.path = "system"
* collection.bodySite.coding ^slicing.rules = #open

* collection.bodySite.coding contains sct 0..1 MS and icd-o-3 0..1 MS

* collection.bodySite.coding[sct] from ValueSetSCTBodyStructures (required)
* collection.bodySite.coding[sct].system = $SCT
* collection.bodySite.coding[icd-o-3] from ValueSetICDO3Topography (required)
* collection.bodySite.coding[icd-o-3].system = "http://terminology.hl7.org/CodeSystem/icd-o-3"

* collection.collected[x] 1..1
* collection.fastingStatus[x] 1..1

//Verarbeitung/Lagerprozess

* processing.extension contains ExtensionTemperaturbedingungen named temperaturbedingungen 1..1 MS
* processing.procedure 1..1

* processing.procedure.coding ^slicing.discriminator.type = #pattern
* processing.procedure.coding ^slicing.discriminator.path = "system"
* processing.procedure.coding ^slicing.rules = #open

* processing.procedure.coding contains sct 1..* MS
* processing.procedure.coding[sct] ^patternCoding.system = "http://snomed.info/sct"

* processing.time[x] 1..1
* processing.timePeriod.start 1..1 MS
* processing.timePeriod.end MS
* processing.additive only Reference(ProfileSubstanceAdditiv)

* processing ^slicing.discriminator.type = #pattern
* processing ^slicing.discriminator.path = "processing.procedure.coding"
* processing ^slicing.rules = #open

* processing contains lagerprozess 0..* MS
* processing[lagerprozess].procedure.coding = $SCT#69997009 "Specimen refrigeration (procedure)" //TODO Besseren Code finden

Invariant:  mii-bb-1
Description: "Bei der Angabe der Entnahmestelle muss ein ICD-O-3 Topographiecode oder ein SNOMED CT Code angegeben werden."
Expression: "coding.where(system = 'http://snomed.info/sct' or system = 'http://terminology.hl7.org/CodeSystem/icd-o-3').exists()"
Severity:   #error


ValueSet: ValueSetProbenart
Id: ValueSetProbenart
Title: "ValueSet - Probenart"

* include codes from system $SCT where concept descendent-of #123038009

ValueSet: ValueSetContainertyp
Id: ValueSetContainertyp
Title: "ValueSet - Containertyp"

* include codes from system $SCT where concept descendent-of #706041008

ValueSet: ValueSetAdditive
Id: ValueSetAdditive
Title: "ValueSet - Additive"

* include codes from system $SCT where concept descendent-of #105590001

ValueSet: ValueSetSCTBodyStructures
Id: ValueSetSCTBodyStructures
Title: "ValueSet - SNOMED CT Body Strutures"

* include codes from system $SCT where concept descendent-of #123037004

CodeSystem: CodeSystemCentrifugationSPREC
Id: CodeSystemCentrifugationSPREC
Title: "CodeSystem - SPREC Zentrifugation"

* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/CentrifugationSPREC"

* #A "RT 10–15 min <3000 g no braking"
* #B "RT 10–15 min <3000 g with braking"
* #C "2°C–10°C 10–15 min <3000 g no braking"
* #D "2°C–10°C 10–15 min <3000 g with braking"
* #E "RT 10–15 min 3000–6000 g with braking"
* #F "2°C–10°C 10–15 min 3000–6000 g with braking"
* #G "RT 10–15 min6000–10000 g with braking"
* #H "2°C–10°C 10–15 min 6000–10000 g with braking"
* #I "RT 10–15 min >10000 g with braking"
* #J "2°C–10°C 10–15 min>10000 g with braking"
* #M "RT 30 min <1000 g no braking"
* #N "No centrifugation"
* #X "Unknown"
* #Z "Other"


ValueSet: ValueSetICDO3Topography
Id: ValueSetICDO3Topography
Title: "ValueSet - ICD-O-3 Topography"

* include codes from system  http://terminology.hl7.org/CodeSystem/icd-o-3 where concept descendent-of #T

Extension: ExtensionDiagnose
Id: ExtensionDiagnose
Title: "Extension - Diagnose"

* value[x] only Reference(Condition)

Extension: ExtensionVerwaltendeOrganisation
Id: ExtensionVerwaltendeOrganisation
Title: "Extension - Verwaltende Organisation"

* value[x] only Reference(Organization)

Extension: ExtensionEinstellungBlutversorgung
Id: ExtensionEinstellungBlutversorgung
Title: "Extension - Einstellung Blutversorgung"

* value[x] only dateTime

Extension: ExtensionTemperaturbedingungen
Id: ExtensionTemperaturbedingungen
Title: "Extension - Temperaturbedingungen"

* value[x] only Range
* valueRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* valueRange.low ^patternQuantity.code = #Cel
* valueRange.low ^patternQuantity.unit = "C"
* valueRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* valueRange.high ^patternQuantity.code = #Cel
* valueRange.high ^patternQuantity.unit = "C"


Profile: ProfileSubstanceAdditiv
Parent: http://hl7.org/fhir/StructureDefinition/Substance
Id: ProfileSubstanceAdditiv
Title: "Profile - Substance - Additiv"
Description: "Abbildung eines Additives, das zu einer Probe hinzugefügt werden kann"

* code from ValueSetAdditive (extensible)
* code MS

Profile: ProfileOrganizationSammlungBiobank
Parent: http://hl7.org/fhir/StructureDefinition/Organization
Id: ProfileOrganizationSammlungBiobank
Title: "Profile - Organization - Sammlung/Biobank"
Description: "Darstellung der organisatorischen Daten einer Probensammlung oder Biobank."

* identifier and type and name and alias and partOf and contact and contact.purpose and contact.name and contact.telecom and contact.address MS //Beschreibung?

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains bbmri-eric-id 0..1 MS

* identifier[bbmri-eric-id] ^patternIdentifier.system = "http://www.bbmri-eric.eu/"

* type from https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/MIABISCollectionType (extensible)

* contact 1..*
* contact.purpose 1..1
* contact.name.family 1..1
* contact.name.given 1..*

* contact.telecom ^slicing.discriminator.type = #pattern
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #open

* contact.telecom contains email 1..* MS
* contact.telecom[email].system = #email
* contact.telecom[email].system 1..1 MS
* contact.telecom[email].value 1..1 MS

* contact.address 1..1




CodeSystem: CodeSystemMIABISCollectionType
Id: CodeSystemMIABISCollectionType
Title: "CodeSystem - MIABIS Collection Type"

* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/MIABISCollectionType"

* #SAMPLE	"Sample collection"
* #TWIN_STUDY	"Twin-study"
* #RD	"Rare disease collection"
* #NON_HUMAN	"Non-human"
* #BIRTH_COHORT	"Birth cohort"
* #CASE_CONTROL	"Case-Control"
* #COHORT	"Cohort"
* #CROSS_SECTIONAL	"Cross-Sectional"
* #DISEASE_SPECIFIC	"Disease specific"
* #HOSPITAL	"Hospital"
* #IMAGE	"Image collection"
* #LONGITUDINAL	"Longitudinal"
* #OTHER	"other"
* #POPULATION_BASED	"Population-based"
* #QUALITY_CONTROL	"Quality control"


RuleSet: BuildElement(path, definition, type)
* differential.element[+].path = "{path}"
* differential.element[=].definition = "{definition}"
* differential.element[=].type.code = "{type}"

Instance: Biobank
InstanceOf: http://hl7.org/fhir/StructureDefinition/StructureDefinition
Title: "Modul Biobank"
Usage: #definition
Description: "Logische Repräsentation des Erweiterungsmodulesmoduls Biobank"

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/LogicalModel/Prozedur"
* name = "Biobank"
* status = #draft
* fhirVersion = #4.0.1
* kind = #logical 
* abstract = false
* type = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/LogicalModel/Prozedur"
* baseDefinition =  "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[+].path = "Biobank"

* insert BuildElement(Biobank.Bioprobe,Bioprobe,BackboneElement)
* insert BuildElement(Biobank.Bioprobe.Proben-ID,Einrichtungsinterner Identifier der Probe,Identifier)
* insert BuildElement(Biobank.Bioprobe.Probenart,Art der Probe; SCT vepflichtend; Beschraenkung auf Specimen ValueSet erwuenscht.,CodeableConcept)
* insert BuildElement(Biobank.Bioprobe.Probenmenge,Probenmenge,Quantity)
* insert BuildElement(Biobank.Bioprobe.Verfügbarkeitsstatus,Status der Probe / des Materials hinsichtlich der Verfügbarkeit,Code)
* insert BuildElement(Biobank.Bioprobe.Projektverwendung,Freitextangabe zur Verwendung der Probe in Projekten,String)
* insert BuildElement(Biobank.Bioprobe.Sonstige Eigenschaften,Freitextangabe weiterer Probeneigenschaften,String)
* insert BuildElement(Biobank.Bioprobe.Ist gewonnen aus,Referenz auf Bioprobe,Reference)
* insert BuildElement(Biobank.Bioprobe.Diagnose,Informationen zu einer mit der Probe in Zusammenhang stehende Diagnose. Hier soll auf eine Diagnose gemäß der Vorgaben des KDS Modules Diagnose verlinkt werden wobei insbesondere bei neu erstellten Diagnosen -die nicht bereits aus anderen Quellen vorliegen- auf die Angabe einer Quelle zu achten ist; z.B. Informationen aus einem nur in unstrukturierter Form vorliegendem Pathologiebefund.,Reference)
* insert BuildElement(Biobank.Bioprobe.gehoert zu,Zuordnung der Probe zu einer Sammlung/Biobank,Reference)
* insert BuildElement(Biobank.Bioprobe.Primaercontainer,Probenbehältnis,BackboneElement)
* insert BuildElement(Biobank.Bioprobe.Primaercontainer.Containertyp,Typ des Containers.,CodeableConcept)
* insert BuildElement(Biobank.Bioprobe.Primaercontainer.Kapazitaet,Kapazitaet des Probencontainers,Quantity)
* insert BuildElement(Biobank.Bioprobe.Primaercontainer.Verwendung Additiv,	Ja/Nein Angabe ob ein Zusatzstoff verwendet wurde,boolean)
* insert BuildElement(Biobank.Bioprobe.Primaercontainer.Additiv,Zusatzstoffe im Container,CodeableConcept)
* insert BuildElement(Biobank.Bioprobe.Probenentnahme,Informationen zur Entnahme der Probe,BackboneElement)
* insert BuildElement(Biobank.Bioprobe.Probenentnahme.Entnahme-ID,Entnahme-ID,Identifier)
* insert BuildElement(Biobank.Bioprobe.Probenentnahme.Einstellung Blutversorgung,Zeitpunkt der Einstellung der Blutversorgung zur Probe. Kann zur Berechnung der warmen Ischaemiezeit verwendet werden.,dateTime)
* insert BuildElement(Biobank.Bioprobe.Probenentnahme.Entnahmezeitpunkt, Zeitpunkt der Ent- / Abnahme der Probe. Kann zur Berechnung der kalten Ischaemiezeit verwendet werden.,dateTime)
* insert BuildElement(Biobank.Bioprobe.Probenentnahme.Entnahmestelle,Lokalisation der Koerperstelle von der die Probe stammt,CodeableConcept)
* insert BuildElement(Biobank.Bioprobe.Probenentnahme.Nuechternstatus,Nüchterstatus des/der Patent:in zum Zeitpunkt der Entnahme der Probe. Muss aus dem http://terminology.hl7.org/ValueSet/v2-0916 stammen.,CodeableConcept)
* insert BuildElement(Biobank.Bioprobe.Probenentnahme.Nuechternstatus Dauer,Zeitliche Dauer der Nüchternheit vor der Probenentnahme,Quantity)
* insert BuildElement(Biobank.Bioprobe.Verarbeitungsprozess,Prozedur der Probenbearbeitung,BackboneElement)
* insert BuildElement(Biobank.Bioprobe.Verarbeitungsprozess.Startzeitpunkt,	Zeitpunkt des Beginns der Probenbearbeitung,dateTime)
* insert BuildElement(Biobank.Bioprobe.Verarbeitungsprozess.Endzeitpunkt,Zeitpunkt des Abschlusses der Probenbearbeitung,dateTime)
* insert BuildElement(Biobank.Bioprobe.Verarbeitungsprozess.Verarbeitungstyp,Prozedur der Probenbearbeitung,BackboneElement)
* insert BuildElement(Biobank.Bioprobe.Verarbeitungsprozess.Temperatur,Temperatur bei der die Probenverarbeitung stattfand. Angabe exakt oder in Wertebereichen siehe SPREC+,Range)
* insert BuildElement(Biobank.Bioprobe.Verarbeitungsprozess.Modus,Abhängig vom Verarbeitungstyp - bei Zentrifugation SPREC,CodeableConcept)
* insert BuildElement(Biobank.Bioprobe.Verarbeitungsprozess.Verwendung Additive, Ja/Nein Angabe ob ein Zusatzstoff verwendet wurde,boolean)
* insert BuildElement(Biobank.Bioprobe.Verarbeitungsprozess.Additiv,Additive bei der Probenbearbeitung wie Fixationsmittel; Einbettungs- und Eindeckungsmedien,CodeableConcept)
* insert BuildElement(Biobank.Bioprobe.Lagerprozess,Lagerung einer Probe,BackboneElement)
* insert BuildElement(Biobank.Bioprobe.Lagerprozess.Einfrierzeitpunkt,Zeitpunkt des Beginns der Einlagerung der Probe,dateTime)
* insert BuildElement(Biobank.Bioprobe.Lagerprozess.Auftauzeitpunkt,Zeitpunkt des Endes der Einlagerung der Probe,dateTime)
* insert BuildElement(Biobank.Bioprobe.Lagerprozess.Lagerungsbedingungen,Temperaturbereich in dem die Probe gelagert wurde bzw. wird. Angabe in Wertebereichen wie in SPREC,Range)
* insert BuildElement(Biobank.Bioprobe.Laborbefund,Referenz auf den zu einer Probe gehörenden Laborbefund,Reference)
* insert BuildElement(Biobank.Bioprobe.Pathologiebefund,Referenz auf den zu einer Probe gehörenden Pathologiebefund,Reference)

* insert BuildElement(Biobank.Probensammlung - Biobank,Organisation die Proben verwaltet,BackboneElement)
* insert BuildElement(Biobank.Probensammlung - Biobank.Kontakt, Kontaktinformationen einer Sammlung/Biobank für Anfragen zu Bioproben,BackboneElement)
* insert BuildElement(Biobank.Probensammlung - Biobank.Kontakt.Vorname, Vorname der Ansprechperson, String)
* insert BuildElement(Biobank.Probensammlung - Biobank.Kontakt.Nachname, Nachname der Ansprechperson ,String)
* insert BuildElement(Biobank.Probensammlung - Biobank.Kontakt.E-Mail, E-Mailadresse für Anfragen ,String)
* insert BuildElement(Biobank.Probensammlung - Biobank.Kontakt.Rolle, Rolle der Ansprechperson in der Sammlung/Biobank ,CodeableConcept)
* insert BuildElement(Biobank.Probensammlung - Biobank.Sammlungs-ID,Interner Identifer der Sammlung/Biobank,Identifier)
* insert BuildElement(Biobank.Probensammlung - Biobank.BBMRI-ERIC-ID,Identifier der Sammlung/Biobank im BBMRI ERIC Netzwerk,Identifier)
* insert BuildElement(Biobank.Probensammlung - Biobank.Akronym,Akronym der Sammlung/Biobank,String)
* insert BuildElement(Biobank.Probensammlung - Biobank.Name,Name der Sammlung/Biobank,String)
* insert BuildElement(Biobank.Probensammlung - Biobank.Beschreibung,Beschreibung der Sammlung/Biobank,String)
* insert BuildElement(Biobank.Probensammlung - Biobank.Sammlungstyp,Typ der Sammlung/Biobank gemäß BBMRI ERIC Directory Werteliste,CodeableConcept)
* insert BuildElement(Biobank.Probensammlung - Biobank.besteht aus,Verknüpfung der Teilsammlungen,Reference)


RuleSet: AddMapping(targetCode, targetDisplay, equivalence)
* group.element[=].target[+].code = #{targetCode}
* group.element[=].target[=].display = {targetDisplay}
* group.element[=].target[=].equivalence = {equivalence}

RuleSet: AddAdditiveMapping(additiveCode, additiveDisplay)
* group.element[=].target[=].product[+].property = "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]"
* group.element[=].target[=].product[=].value = #{additiveCode}
* group.element[=].target[=].product[=].display = {additiveDisplay}

RuleSet: InitMapping(code, display)
* group.element[+].code = {code}
* group.element[=].display = {display}

RuleSet: AddComment(comment)
* group.element[=].target[=].comment = {comment}


Instance: SPRECLongTermStorageMap
InstanceOf: http://hl7.org/fhir/StructureDefinition/ConceptMap
Title: "SPREC 3.0 Long-Term Storage Containertypen Mapping"
Usage: #definition
Description: "Mapping der SPREC 3.0 Long-Term Storage Containertypen auf die im Modul verwendeten SNOMED CT Codes."

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/SPRECLongTermStorageMap"
* title = "SPREC 3.0 Long-Term Storage Mapping"
* status = #draft

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


Instance: SPRECPrimaryContainerMap
InstanceOf: http://hl7.org/fhir/StructureDefinition/ConceptMap
Title: "SPREC 3.0 Primary Container Mapping"
Usage: #definition
Description: "Mapping der SPREC 3.0 Primary-Container-Containertypen auf die im Modul verwendeten SNOMED CT Codes."

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/SPRECPrimaryContainerMap"
* title = "SPREC 3.0 Primary Container Mapping"
* status = #draft

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



Instance: SPRECFixationTypeMap
InstanceOf: http://hl7.org/fhir/StructureDefinition/ConceptMap
Title: "SPREC 3.0 Fixation Type Mapping"
Usage: #definition
Description: "Mapping der SPREC 3.0 Fixation Types auf die im Modul verwendeten SNOMED CT Codes für Zusatzstoffe."

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/SPRECSampleTypeMap"
* title = "SPREC 3.0 Fixation Type Mapping"
* status = #draft

* group.target = "http://snomed.info/sct"

* insert InitMapping(#ACA, "Nonaldehyde with acetic acid")
* insert AddMapping(2869004, "Acetic acid (substance\)", #wider)

* insert InitMapping(#ALD, "Aldehyde based")
* insert AddMapping(768750002, "Product containing aldehyde (product\)", #wider)

* insert InitMapping(#ALD, "Alcohol based")
* insert AddMapping(333164008, "Product containing alcohol (product\)", #wider)

* insert InitMapping(#FOR, "Nonbuffered formalin")
* insert AddMapping(431510009, "Formalin (substance\)", #wider)

* insert InitMapping(#NBF, "Neutral buffered formalin")
* insert AddMapping(434162003, "Neutral buffered formalin (substance\)", #equivalent)

* insert InitMapping(#OCT, "Optimum cutting temperature medium")
* insert AddMapping(433469005, "Frozen section embedding medium (substance\)", #wider)


Instance: SPRECSampleTypeMap
InstanceOf: http://hl7.org/fhir/StructureDefinition/ConceptMap
Title: "SPREC 3.0 Sample Type Mapping"
Usage: #definition
Description: "Mapping der SPREC 3.0 Sample Types auf die im Modul verwendeten SNOMED CT Codes."

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/SPRECSampleTypeMap"
* title = "SPREC 3.0 Sample Type Mapping"
* status = #draft

* group.target = "http://snomed.info/sct"

* insert InitMapping(#ASC, "Ascites fluid")
* insert AddMapping(309201001, "Ascitic fluid sample (specimen\)", #equivalent)
* insert InitMapping (#AMN ,"Amniotic fluid")
* insert AddMapping (119373006, "Amniotic fluid specimen (specimen\)", #equivalent)
* insert InitMapping (#BAL, "Bronchoalveolar lavage")
* insert AddMapping (258607008, "Bronchoalveolar lavage fluid sample (specimen\)", #equivalent)
* insert InitMapping(#BLD, "Blood (whole\)")
* insert AddMapping(420135007, "Whole blood (substance\)", #equivalent)
* insert InitMapping(#BMA, "Bone marrow aspirate")
* insert AddMapping(396997002, "Specimen from bone marrow obtained by aspiration (specimen\)", #equivalent)
* insert InitMapping(#BMK, "Breast milk")
* insert AddMapping(446676001,"Expressed breast milk specimen (specimen\)",#equivalent)
* insert InitMapping(#BUF, "Nondensity-gradient-centrifugation-separatedbuffy coat\, viable")
* insert AddMapping(258587000, "Buffy coat (specimen\)", #wider)
* insert InitMapping(#BFF, "Nondensity-gradient-centrifugation-separatedbuffy coat\, nonviable")
* insert AddMapping(258587000, "Buffy coat (specimen\)", #wider)
* insert InitMapping(#CEL, "Density-gradient-centrifugation-separatedmononuclear cells\, viable")
* insert AddMapping(404798000, "Peripheral blood mononuclear cell (cell\)", #wider)
* insert InitMapping(#BON, "Bone")
* insert AddMapping(430268003,"Specimen from bone (specimen\)", #equivalent)
* insert InitMapping(#CRD, "Cord blood")
* insert AddMapping(122556008,"Cord blood specimen (specimen\)", #equivalent)
* insert InitMapping(#HAR, "Hair")
* insert AddMapping(119326000, "Hair specimen (specimen\)",#equivalent)
* insert InitMapping(#NAL, "Nails")
* insert AddMapping(119327009, "Nail specimen (specimen\)", #equivalent)
* insert InitMapping(#NAS, "Nasal washing")
* insert AddMapping(258467004, "Nasopharyngeal washings (specimen\)", #wider)
* insert InitMapping(#PLC, "Placenta")
* insert AddMapping(119403008, "Specimen from placenta (specimen\)", #equivalent)
* insert InitMapping(#PFL, "Pleural fluid")
* insert AddMapping(418564007, "Pleural fluid specimen (specimen\)",#equivalent)
* insert InitMapping(#RBC, "Red blood cells")
* insert AddMapping(119351004, "Erythrocyte specimen (specimen\)", #equivalent)
* insert InitMapping(#SEM, "Semen")
* insert AddMapping(119347001, "Seminal fluid specimen (specimen\)", #equivalent)
* insert InitMapping(#SPT, "Sputum")
* insert AddMapping(119334006, "Sputum specimen (specimen\)", #equivalent)
* insert InitMapping(#SYN, "Synovial fluid")	
* insert AddMapping(119332005, "Synovial fluid specimen (specimen\)", #equivalent)
* insert InitMapping(#TER,"Tears")
* insert AddMapping(122594008, "Tears specimen (specimen\)", #equivalent)
* insert InitMapping(#TTH, "Teeth")
* insert AddMapping(430319000, "Specimen from tooth (specimen\)", #equivalent)
* insert InitMapping(#SER, "Serum")
* insert AddMapping(119364003, "Serum specimen (specimen\)", #equivalent)
* insert InitMapping(#CSF, "Cerebrospinal fluid")
* insert AddMapping(258450006,"Cerebrospinal fluid sample (specimen\)", #equivalent)
* insert InitMapping(#SAL,"Saliva")
* insert AddMapping(119342007,"Saliva specimen (specimen\)", #equivalent)
* insert InitMapping(#STL, "Stool")
* insert AddMapping(119339001,"Stool specimen (specimen\)", #equivalent)
* insert InitMapping(#U24, "24 h urine")
* insert AddMapping(276833005, "24 hour urine sample (specimen\)", #equivalent)
* insert InitMapping(#URN, "Urine\, random (‘‘spot’’\)")
* insert AddMapping(278020009,"Spot urine sample (specimen\)", #equivalent)
* insert InitMapping(#URM, "Urine\, first morning")
* insert AddMapping(122575003,"Urine specimen (specimen\)", #wider)
* insert InitMapping(#URT, "Urine\, timed")
* insert AddMapping(409821005," Timed urine specimen (specimen\)", #equivalent)
* insert InitMapping(#DWB, "Dried whole blood (e.g.\, Guthrie cards\)")
* insert AddMapping(119294007,"Dried blood specimen (specimen\)", #equivalent)
* insert InitMapping(#PL1, "Plasma\, single spun")
* insert AddMapping(119361006,"Plasma specimen (specimen\)", #wider)
* insert InitMapping(#PL2, "Plasma\, double spun")
* insert AddMapping(119361006,"Plasma specimen (specimen\)", #wider)