Alias: $SCT = http://snomed.info/sct

Profile: ProfileSpecimenBioprobeCore
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: SpecimenCore
Title: "Profile - Specimen- Bioprobe - Core"
Description: "Abbildung einer MII Bioprobe"

* identifier and type and container.specimenQuantity and status and note and parent and container.type and container.capacity 
and container.additive[x] and collection.collected[x] and collection.bodySite and collection.fastingStatus[x] 
and processing.timePeriod and processing.procedure and processing.additive MS

//Bioprobe

* status 1..1

* type 1..1
* type.coding ^slicing.discriminator.type = #pattern
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open

* type.coding contains sct 1..*
* type.coding[sct] from probenart (extensible)
* type.coding[sct].system = $SCT

* subject 1..1
* subject only Reference(Patient)

//Container

* container.type from containertyp (extensible)
* container.type 1..1

* container.additive[x] only Reference(ProfileSubstanceAdditiv)

//Entnahme

* collection 1..1

* collection.extension contains Entnahmeprozedur named entnahmeprozedur 0..1 MS and EinstellungBlutversorgung named einstellungBlutversorgung 0..1 MS

* collection.fastingStatusCodeableConcept from 	http://terminology.hl7.org/ValueSet/v2-0916 (required)

* collection.bodySite obeys mii-bb-1

* collection.bodySite.coding ^slicing.discriminator.type = #pattern
* collection.bodySite.coding ^slicing.discriminator.path = "system"
* collection.bodySite.coding ^slicing.rules = #open

* collection.bodySite.coding contains sct 0..1 MS and icd-o-3 0..1 MS

* collection.bodySite.coding[sct] from sct-body-structures (required)
* collection.bodySite.coding[sct].system = $SCT
* collection.bodySite.coding[icd-o-3] from icd-o-3-topography (required)
* collection.bodySite.coding[icd-o-3].system = "http://terminology.hl7.org/CodeSystem/icd-o-3"

* collection.collected[x] 1..1

//Verarbeitung/Lagerprozess

* processing.extension contains Temperaturbedingungen named temperaturbedingungen 1..1 MS
* processing.procedure 1..1 MS

* processing.procedure.coding ^slicing.discriminator.type = #pattern
* processing.procedure.coding ^slicing.discriminator.path = "system"
* processing.procedure.coding ^slicing.rules = #open

* processing.procedure.coding contains sct 1..* MS
* processing.procedure.coding[sct] ^patternCoding.system = "http://snomed.info/sct"
* processing.procedure from sct-specimen-preparation (example)

* processing.time[x] 1..1
* processing.timePeriod.start 1..1 MS
* processing.timePeriod.end MS
* processing.additive only Reference(ProfileSubstanceAdditiv)

* processing ^slicing.discriminator.type = #pattern
* processing ^slicing.discriminator.path = "processing.procedure.coding"
* processing ^slicing.rules = #open

* processing contains lagerprozess 0..* MS
* processing[lagerprozess].procedure.coding = $SCT#1186936003

Profile: ProfileSpecimenBioprobe
Parent: SpecimenCore
Id: SpecimenBiobank
Title: "Profile - Specimen- Bioprobe - Biobank"
Description: "Abbildung einer MII Bioprobe"

//Bioprobe

* extension contains Diagnose named diagnose 0..1 MS and VerwaltendeOrganisation named gehoertZu 1..1 MS

Invariant:  mii-bb-1
Description: "Bei der Angabe der Entnahmestelle muss ein ICD-O-3 Topographiecode oder ein SNOMED CT Code angegeben werden."
Expression: "coding.where(system = 'http://snomed.info/sct' or system = 'http://terminology.hl7.org/CodeSystem/icd-o-3').exists()"
Severity:   #error

ValueSet: ValueSetProbenart
Id: probenart
Title: "ValueSet - Probenart"

* include codes from system $SCT where concept descendent-of #123038009

ValueSet: ValueSetContainertyp
Id: containertyp
Title: "ValueSet - Containertyp"

* include codes from system $SCT where concept descendent-of #706041008

ValueSet: ValueSetAdditive
Id: additive
Title: "ValueSet - Additive"

* include codes from system $SCT where concept descendent-of #105590001

ValueSet: ValueSetSCTBodyStructures
Id: sct-body-structures
Title: "ValueSet - SNOMED CT Body Strutures"

* include codes from system $SCT where concept descendent-of #123037004

ValueSet: ValueSetICDO3Topography
Id: icd-o-3-topography
Title: "ValueSet - ICD-O-3 Topography"

* include codes from system  http://terminology.hl7.org/CodeSystem/icd-o-3 where concept descendent-of #T

ValueSet: ValueSetSCTSpecimenPreparation
Id: sct-specimen-preparation
Title: "ValueSet - SNOMED CT Specimen Preparation"

* include codes from system $SCT where concept descendent-of #56245008

Extension: ExtensionDiagnose
Id: Diagnose
Title: "Extension - Diagnose"

* value[x] only Reference(Condition)

Extension: ExtensionVerwaltendeOrganisation
Id: VerwaltendeOrganisation
Title: "Extension - Verwaltende Organisation"

* value[x] only Reference(ProfileOrganizationSammlungBiobank)

Extension: ExtensionEinstellungBlutversorgung
Id: EinstellungBlutversorgung
Title: "Extension - Einstellung Blutversorgung"

* value[x] only dateTime

Extension: ExtensionTemperaturbedingungen
Id: Temperaturbedingungen
Title: "Extension - Temperaturbedingungen"

* value[x] only Range
* valueRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* valueRange.low ^patternQuantity.code = #Cel
* valueRange.low ^patternQuantity.unit = "°C"
* valueRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* valueRange.high ^patternQuantity.code = #Cel
* valueRange.high ^patternQuantity.unit = "°C"

Extension: ExtensionEntnahmeprozedur
Id: Entnahmeprozedur
Title: "Extension - Entnahmeprozedur"

* value[x] only Reference(Procedure)

Profile: ProfileSubstanceAdditiv
Parent: http://hl7.org/fhir/StructureDefinition/Substance
Id: Substance
Title: "Profile - Substance - Additiv"
Description: "Abbildung eines Additives, das zu einer Probe hinzugefügt werden kann"

* code from additive (extensible)
* code MS

Profile: ProfileOrganizationSammlungBiobank
Parent: http://hl7.org/fhir/StructureDefinition/Organization
Id: Organization
Title: "Profile - Organization - Sammlung/Biobank"
Description: "Darstellung der organisatorischen Daten einer Probensammlung oder Biobank."

* extension contains BeschreibungSammlung named beschreibung 0..1 MS

* identifier and type and name and alias and partOf and contact MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains bbmri-eric-id 0..1 MS

* identifier[bbmri-eric-id] ^patternIdentifier.system = "http://www.bbmri-eric.eu/"

* name 1..1

* type from https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/miabis-collection-type (extensible)

* contact ^slicing.discriminator.type = #pattern
* contact ^slicing.discriminator.path = "purpose"
* contact ^slicing.rules = #open

* contact contains forschungskontakt 1..* MS

* contact[forschungskontakt].extension contains KontaktRolle named rolle 1..1 MS

* contact[forschungskontakt].purpose = ContactType#RESEARCH
* contact[forschungskontakt].name.family 1..1 MS
* contact[forschungskontakt].name.given 1..* MS

* contact[forschungskontakt].telecom 1..*

* contact[forschungskontakt].address 1..1 MS
* contact[forschungskontakt].address only http://fhir.de/StructureDefinition/address-de-basis

Extension: ExtensionBeschreibungSammlung
Id: BeschreibungSammlung
Title: "Extension - Beschreibung Sammlung"

* value[x] only markdown

Extension: ExtensionKontaktRolle
Id: KontaktRolle
Title: "Extension - Rolle des Kontaktes"

* value[x] only string

CodeSystem: CodeSystemMIABISCollectionType
Id: MIABISCollectionType
Title: "CodeSystem - MIABIS Collection Type"

* ^copyright = "Die hier verwendeten Codes stammen aus dem MIABIS 2.0 Standard (siehe https://www.liebertpub.com/doi/full/10.1089/bio.2015.0070)."
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/miabis-collection-type"

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

CodeSystem: CodeSystemContactType
Id: ContactType
Title: "CodeSystem - Contact Type"

* #RESEARCH "Contact for researchers about sample and data requests"


RuleSet: BuildElement(path, definition, type)
* differential.element[+].path = "{path}"
* differential.element[=].definition = "{definition}"
* differential.element[=].type.code = "{type}"

Instance: Biobank
InstanceOf: http://hl7.org/fhir/StructureDefinition/StructureDefinition
Title: "Modul Biobank"
Usage: #definition
Description: "Logische Repräsentation des Erweiterungsmodulesmoduls Biobank"

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/LogicalModel/Biobank"
* name = "Biobank"
* status = #draft
* fhirVersion = #4.0.1
* kind = #logical 
* abstract = false
* type = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/LogicalModel/Biobank"
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
* insert BuildElement(Biobank.Bioprobe.Container,Probenbehältnis,BackboneElement)
* insert BuildElement(Biobank.Bioprobe.Container.Containertyp,Typ des Containers.,CodeableConcept)
* insert BuildElement(Biobank.Bioprobe.Container.Kapazitaet,Kapazitaet des Probencontainers,Quantity)
* insert BuildElement(Biobank.Bioprobe.Container.Verwendung Additiv,	Ja/Nein Angabe ob ein Zusatzstoff verwendet wurde,boolean)
* insert BuildElement(Biobank.Bioprobe.Container.Additiv,Zusatzstoffe im Container,CodeableConcept)
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
* insert BuildElement(Biobank.Bioprobe.Lagerprozess.Einlagerungszeitpunkt,Zeitpunkt des Beginns der Einlagerung der Probe,dateTime)
* insert BuildElement(Biobank.Bioprobe.Lagerprozess.Auslagerungspunkt,Zeitpunkt des Endes der Einlagerung der Probe,dateTime)
* insert BuildElement(Biobank.Bioprobe.Lagerprozess.Lagerungsbedingungen,Temperaturbereich in dem die Probe gelagert wurde bzw. wird. Angabe in Wertebereichen wie in SPREC,Range)
* insert BuildElement(Biobank.Bioprobe.Laborbefund,Referenz auf den zu einer Probe gehörenden Laborbefund,Reference)
* insert BuildElement(Biobank.Bioprobe.Pathologiebefund,Referenz auf den zu einer Probe gehörenden Pathologiebefund,Reference)

* insert BuildElement(Biobank.Probensammlung - Biobank,Organisation die Proben verwaltet,BackboneElement)
* insert BuildElement(Biobank.Probensammlung - Biobank.Kontakt, Kontaktinformationen einer Sammlung/Biobank für Anfragen zu Bioproben,BackboneElement)
* insert BuildElement(Biobank.Probensammlung - Biobank.Kontakt.Vorname, Vorname der Ansprechperson, String)
* insert BuildElement(Biobank.Probensammlung - Biobank.Kontakt.Nachname, Nachname der Ansprechperson ,String)
* insert BuildElement(Biobank.Probensammlung - Biobank.Kontakt.E-Mail, E-Mailadresse für Anfragen ,String)
* insert BuildElement(Biobank.Probensammlung - Biobank.Kontakt.Rolle, Rolle der Ansprechperson in der Sammlung/Biobank ,CodeableConcept)
* insert BuildElement(Biobank.Probensammlung - Biobank.Kontakt.Adresse, Kontaktadresse für Forschungsvorhaben ,Address)
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

* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/SPRECFixationTypeMap"
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
* insert AddMapping(16224371000119105, "Nasal lavage fluid sample (specimen\)", #equivalent)
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
* insert InitMapping(#TER, "Tears")
* insert AddMapping(122594008, "Tears specimen (specimen\)", #equivalent)
* insert InitMapping(#TTH, "Teeth")
* insert AddMapping(430319000, "Specimen from tooth (specimen\)", #equivalent)
* insert InitMapping(#SER, "Serum")
* insert AddMapping(119364003, "Serum specimen (specimen\)", #equivalent)
* insert InitMapping(#CSF, "Cerebrospinal fluid")
* insert AddMapping(258450006,"Cerebrospinal fluid sample (specimen\)", #equivalent)
* insert InitMapping(#SAL, "Saliva")
* insert AddMapping(119342007,"Saliva specimen (specimen\)", #equivalent)
* insert InitMapping(#STL, "Stool")
* insert AddMapping(119339001,"Stool specimen (specimen\)", #equivalent)
* insert InitMapping(#U24, "24 h urine")
* insert AddMapping(276833005, "24 hour urine sample (specimen\)", #equivalent)
* insert InitMapping(#URN, "Urine\, random (‘‘spot’’\)")
* insert AddMapping(278020009,"Spot urine sample (specimen\)", #equivalent)
* insert InitMapping(#URM, "Urine\, first morning")
* insert AddMapping(258575007,"Early morning urine sample (specimen\)", #wider)
* insert InitMapping(#URT, "Urine\, timed")
* insert AddMapping(409821005," Timed urine specimen (specimen\)", #equivalent)
* insert InitMapping(#DWB, "Dried whole blood (e.g.\, Guthrie cards\)")
* insert AddMapping(119294007,"Dried blood specimen (specimen\)", #equivalent)
* insert InitMapping(#PL1, "Plasma\, single spun")
* insert AddMapping(119361006,"Plasma specimen (specimen\)", #wider)
* insert InitMapping(#PL2, "Plasma\, double spun")
* insert AddMapping(119361006,"Plasma specimen (specimen\)", #wider)


Instance: BiobankMusterstadt
InstanceOf: Organization
Title: "Biobank Musterstadt"
Usage: #example

* extension[beschreibung].valueMarkdown = "Biobank des Krankenhauses Musterstadt."
* identifier[bbmri-eric-id].value = "de-12345"
* name = "Biobank Musterstadt"
* contact[forschungskontakt].extension[rolle].valueString = "Direktor"
* contact[forschungskontakt].name.family = "Mustermann"
* contact[forschungskontakt].name.given = "Max"
* contact[forschungskontakt].name.prefix = "Prof."
* contact[forschungskontakt].telecom.system = #email
* contact[forschungskontakt].telecom.value = "mustermann@biobank.uk-musterstadt.de"
* contact[forschungskontakt].name.prefix = "Prof."
* contact[forschungskontakt].address.line = "Musterstrasse 3"
* contact[forschungskontakt].address.postalCode = "00000"
* contact[forschungskontakt].address.city = "Musterstadt"

Instance: Mustersammlung
InstanceOf: Organization
Title: "Mustersammlung"
Usage: #example

* extension[BeschreibungSammlung].valueMarkdown = "Sammlung mit im Rahmen der Versorgung gewonnenen Proben."
* type = MIABISCollectionType#HOSPITAL "Hospital"
* name = "Mustersammlung"
* partOf = Reference(BiobankMusterstadt)
* contact[forschungskontakt].extension[rolle].valueString = "Forschungskoordinatorin"
* contact[forschungskontakt].name.family = "Musterfrau"
* contact[forschungskontakt].name.given = "Tina"
* contact[forschungskontakt].name.prefix = "Dr."
* contact[forschungskontakt].telecom.system = #email
* contact[forschungskontakt].telecom.value = "musterfrau@biobank.uk-musterstadt.de"
* contact[forschungskontakt].address.line = "Musterweg 10"
* contact[forschungskontakt].address.postalCode = "00000"
* contact[forschungskontakt].address.city = "Musterstadt"

Instance: MusterprobeFluessig
InstanceOf: SpecimenBiobank
Title: "Musterprobe flüssig"
Usage: #example

* extension[gehoertZu].valueReference = Reference(Mustersammlung)
* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "12345"
* status = #available
* type = http://snomed.info/sct#122555007 "Venous blood specimen (specimen)"
* subject.reference = "Patient/12345"
* collection.collectedDateTime = "2018-06-07T15:54:00+01:00"
* collection.fastingStatusCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0916#NG "Not Given - Patient was not asked at the time of the procedure."

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].procedure =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T15:54:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T16:27:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].procedure =  $SCT#73373003 "Specimen centrifugation (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:27:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T16:37:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].procedure =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:37:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T16:51:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = -85
* processing[=].extension[temperaturbedingungen].valueRange.high.value = -60
* processing[=].procedure.coding[0] =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].procedure.coding[1] =  http://snomed.info/sct#27872000 "Specimen freezing (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:51:00+01:00"

* container.type = http://snomed.info/sct#83059008 "Tube, device (physical object)"
* container.capacity = 10 'ml'
* container.specimenQuantity = 10 'ml'
* container.additiveReference = Reference(Heparin)

Instance: Heparin
InstanceOf: Substance
Title: "Heparin"
Usage: #example

* code = http://snomed.info/sct#372877000 "Heparin (substance)"


Instance: MusterprobeGewebe
InstanceOf: SpecimenBiobank
Title: "Musterprobe Gewebe"
Usage: #example

* extension[gehoertZu].valueReference = Reference(Mustersammlung)
* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "6789"
* status = #available
* type = http://snomed.info/sct#399492000 "Tissue specimen from lung (specimen)"
* subject.reference = "Patient/12345"

* collection.extension[einstellungBlutversorgung].valueDateTime = "2018-06-08T15:32:00+01:00"
* collection.collectedDateTime = "2018-06-08T15:34:00+01:00"
* collection.fastingStatusDuration = 4 'h'
* collection.bodySite = http://snomed.info/sct#14559000 "Structure of apex of left lung (body structure)"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].procedure =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-08T15:34:00+01:00"
* processing[=].timePeriod.end = "2018-06-08T15:42:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = -85
* processing[=].extension[temperaturbedingungen].valueRange.high.value = -60
* processing[=].procedure.coding[0] =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].procedure.coding[1] = $SCT#27872000 "Specimen freezing (procedure)"
* processing[=].timePeriod.start = "2018-06-08T15:42:00+01:00"

* container.type = http://snomed.info/sct#83059008 "Tube, device (physical object)"

