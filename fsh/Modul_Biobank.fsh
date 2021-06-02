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

* type.coding ^slicing.discriminator.type = #pattern
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open

* type.coding contains sct 1..*
* type.coding[sct] from ValueSetProbenart (extensible)
* type.coding[sct].system = $SCT

//Primärcontainer

* container.type from ValueSetContainertyp (extensible)

//Additiv: Wie ja/nein? Substance vs CodeableConcept? Profile auf Substance?
* container.additiveCodeableConcept from ValueSetAdditive (extensible)
* container.additiveReference only Reference(ProfileSubstanceAdditiv)

//Probenentnahme -> Entnahme-ID?

* collection.extension contains ExtensionEinstellungBlutversorgung named einstellungBlutversorgung 0..1 MS

* collection.fastingStatusCodeableConcept from 	http://terminology.hl7.org/ValueSet/v2-0916 (required)

* collection.bodySite.coding ^slicing.discriminator.type = #pattern
* collection.bodySite.coding ^slicing.discriminator.path = "system"
* collection.bodySite.coding ^slicing.rules = #open

* collection.bodySite.coding contains sct 0..1 MS and icd-o-3 0..1 MS

* collection.bodySite.coding[sct] from ValueSetSCTBodyStructures (required)
* collection.bodySite.coding[sct].system = $SCT
//TODO ICD-O-3 + constraint sct oder icd-O-3

//Verarbeitung/Lagerprozess

* processing.extension contains ExtensionTemperaturbedingungen named temperaturbedingungen 0..1 MS
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


//ICD-O-3 Topography ValueSet TODO

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

* type from https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/BBMRICollectionType (extensible) //?

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




CodeSystem: CodeSystemBBMRICollectionType
Id: CodeSystemBBMRICollectionType
Title: "CodeSystem - BBMRI Collection Type"

* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/BBMRICollectionType"

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
* insert BuildElement(Biobank.Probensammlung - Biobank.Sammlungs-ID,Interner Identifer der Sammlung/Biobank,Identifier)
* insert BuildElement(Biobank.Probensammlung - Biobank.BBMRI-ERIC-ID,Identifier der Sammlung/Biobank im BBMRI ERIC Netzwerk,Identifier)
* insert BuildElement(Biobank.Probensammlung - Biobank.Akronym,Akronym der Sammlung/Biobank,String)
* insert BuildElement(Biobank.Probensammlung - Biobank.Name,Name der Sammlung/Biobank,String)
* insert BuildElement(Biobank.Probensammlung - Biobank.Beschreibung,Beschreibung der Sammlung/Biobank,String)
* insert BuildElement(Biobank.Probensammlung - Biobank.Sammlungstyp,Typ der Sammlung/Biobank gemäß BBMRI ERIC Directory Werteliste,CodeableConcept)
* insert BuildElement(Biobank.Probensammlung - Biobank.besteht aus,Verknüpfung der Teilsammlungen,Reference)



