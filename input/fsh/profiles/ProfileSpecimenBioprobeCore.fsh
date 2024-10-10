Profile: ProfileSpecimenBioprobeCore
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: SpecimenCore
Title: "Profile - Specimen - Bioprobe - Core"
Description: "Basisiprofil zur Abbildung einer MII Bioprobe. Nicht zur direkten Implementierung gedacht, Module leiten bei Bedarf eigene Profile von diesem Profil ab."

* identifier and type and container.specimenQuantity and status and note and parent and container.type and container.capacity 
and container.additive[x] and collection.collected[x] and collection.bodySite and collection.fastingStatus[x] 
and processing.timePeriod and processing.procedure and processing.additive and request and subject and collection and processing and container MS

//Bioprobe

* status 1..1

* type 1..1
* type.coding ^slicing.discriminator.type = #pattern
* type.coding ^slicing.discriminator.path = "$this.system"
* type.coding ^slicing.rules = #open

* type.coding contains sct 1..*
* type.coding[sct] from probenart (extensible)
* type.coding[sct].system = $SCT

* subject 1..1
* subject only Reference(Patient)

//Container

* container.type from containertyp (extensible)
* container.type 1..1

* container.additiveReference only Reference(ProfileSubstanceAdditiv)

//Entnahme

* collection 1..1

* collection.extension contains EinstellungBlutversorgung named einstellungBlutversorgung 0..1 MS

* collection.fastingStatusCodeableConcept from 	http://terminology.hl7.org/ValueSet/v2-0916 (required)

* collection.bodySite obeys mii-bb-1

* collection.bodySite.coding ^slicing.discriminator.type = #pattern
* collection.bodySite.coding ^slicing.discriminator.path = "$this.system"
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
* processing.procedure from sct-lab-procedure (example)

* processing.procedure.coding ^slicing.discriminator.type = #pattern
* processing.procedure.coding ^slicing.discriminator.path = "$this.system"
* processing.procedure.coding ^slicing.rules = #open

* processing.procedure.coding contains sct 1..* MS
* processing.procedure.coding[sct].system = $SCT

* processing.time[x] MS
* processing.timePeriod.start MS
* processing.timePeriod.end MS
* processing.additive only Reference(ProfileSubstanceAdditiv)

* processing ^slicing.discriminator.type = #pattern
* processing ^slicing.discriminator.path = "$this.procedure.coding"
* processing ^slicing.rules = #open

* processing contains lagerprozess 0..* MS
* processing[lagerprozess].time[x] 1..1
* processing[lagerprozess].time[x] only Period
* processing[lagerprozess].timePeriod.start 1..1
* processing[lagerprozess].procedure.coding = $SCT#1186936003
