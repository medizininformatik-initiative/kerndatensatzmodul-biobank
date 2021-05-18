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
* processing.time[x] 1..1
* processing.timePeriod.start 1..1
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

CodeSystem: CodeSystemTemperaturSPREC
Id: CodeSystemTemperaturSPREC
Title: "CodeSystem - SPREC Temperaturbereiche"

* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/TemperaturSPREC"

* #RT
* #2-10C
* #>35C
* #-85to-60C
* #-35to-18C
* #<-135C
* #LN

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

* value[x] only CodeableConcept
* valueCodeableConcept from https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/TemperaturSPREC (required)

Profile: ProfileSubstanceAdditiv
Parent: http://hl7.org/fhir/StructureDefinition/Substance
Id: ProfileSubstanceAdditiv
Title: "Profile - Substance - Additiv"
Description: "Abbildung eines Additives, das zu einer Probe hinzugefügt werden kann"

* code from ValueSetAdditive (extensible)
* code MS