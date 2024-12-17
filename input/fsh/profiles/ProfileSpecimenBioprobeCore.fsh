Profile: ProfileSpecimenBioprobeCore
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: SpecimenCore
Title: "Profile - Specimen - Bioprobe - Core"
Description: "Basisiprofil zur Abbildung einer MII Bioprobe. Nicht zur direkten Implementierung gedacht, Module leiten bei Bedarf eigene Profile von diesem Profil ab."

* insert PR_CS_VS_Version

* identifier and type and container.specimenQuantity and status and note and parent and container and container.type and container.capacity 
and container.additive[x] and collection and collection.collected[x] and collection.bodySite and collection.fastingStatus[x] and processing
and processing.timePeriod and processing.procedure and processing.additive and request and subject MS

* identifier ^short = "Proben-ID"
* insert Translation(identifier ^short, de-DE, Proben-ID)
* insert Translation(identifier ^short, en-US, Specimen ID)

* identifier ^definition = "Einrichtungsinterner Identifier der Probe."
* insert Translation(identifier ^definition, de-DE, Einrichtungsinterner Identifier der Probe.)
* insert Translation(identifier ^definition, en-US, Internal identifier of the specimen at the institution.)

* type ^short = "Probenart"
* insert Translation(type ^short, de-DE, Probenart)
* insert Translation(type ^short, en-US, Specimen type)

* type ^definition = "Die Art der Probe, codiert in SNOMED CT."
* insert Translation(type ^definition, de-DE, Die Art der Probe\, codiert in SNOMED CT.)
* insert Translation(type ^definition, en-US, The type of the specimen\, encoded as SNOMED CT code.)

* container.specimenQuantity ^short = "Probenmenge"
* insert Translation(container.specimenQuantity ^short, de-DE, Probenmenge)
* insert Translation(container.specimenQuantity ^short, en-US, Specimen quantity)

* container.specimenQuantity ^definition = "Die Menge des gesammelten Materials."
* insert Translation(container.specimenQuantity ^definition, de-DE, Die Menge des gesammelten Materials.)
* insert Translation(container.specimenQuantity ^definition, en-US, The amount of material collected.)

* status ^short = "Verfügbarkeitsstatus"
* insert Translation(status ^short, de-DE, Verfügbarkeitsstatus)
* insert Translation(status ^short, en-US, Availability status)

* status ^definition = "Der Status der Probe in Bezug auf die Verfügbarkeit für Forschung."
* insert Translation(status ^definition, de-DE, Der Status der Probe in Bezug auf die Verfügbarkeit für Forschung.)
* insert Translation(status ^definition, en-US, The status of the specimen in terms of its availability for research.)

* note ^short = "Projektnutzung"
* insert Translation(note ^short, de-DE, Projektnutzung)
* insert Translation(note ^short, en-US, Project usage)

* note ^definition = "Freitextangabe zur Verwendung der Probe in spezifischen Projekten."
* insert Translation(note ^definition, de-DE, Freitextangabe zur Verwendung der Probe in spezifischen Projekten.)
* insert Translation(note ^definition, en-US, Free-text information about the use of the specimen in specific projects.)

* parent ^short = "Ist gewonnen aus"
* insert Translation(parent ^short, de-DE, Ist gewonnen aus)
* insert Translation(parent ^short, en-US, Derived from)

* parent ^definition = "Referenz auf eine übergeordnete Probe, aus der diese Probe gewonnen wurde."
* insert Translation(parent ^definition, de-DE, Referenz auf eine übergeordnete Probe\, aus der diese Probe gewonnen wurde.)
* insert Translation(parent ^definition, en-US, Reference to a parent specimen from which this specimen was derived.)

* container ^short = "Probenbehältnis"
* insert Translation(container ^short, de-DE, Probenbehältnis)
* insert Translation(container ^short, en-US, Specimen container)

* container ^definition = "Informationen über den Behälter, in dem die Probe aufbewahrt wird."
* insert Translation(container ^definition, de-DE, Informationen über den Behälter\, in dem die Probe aufbewahrt wird.)
* insert Translation(container ^definition, en-US, Information about the container in which the specimen is stored.)

* container.type ^short = "Containertyp"
* insert Translation(container.type ^short, de-DE, Containertyp)
* insert Translation(container.type ^short, en-US, Container type)

* container.type ^definition = "Der Typ des Probencontainers, der für diese Probe verwendet wurde."
* insert Translation(container.type ^definition, de-DE, Der Typ des Probencontainers\, der für diese Probe verwendet wurde.)
* insert Translation(container.type ^definition, en-US, The type of container used for this specimen.)

* container.capacity ^short = "Containerkapazität"
* insert Translation(container.capacity ^short, de-DE, Containerkapazität)
* insert Translation(container.capacity ^short, en-US, Capacity)

* container.capacity ^definition = "Die maximale Kapazität des Containers, der für die Probe verwendet wurde."
* insert Translation(container.capacity ^definition, de-DE, Die maximale Kapazität des Containers\, der für die Probe verwendet wurde.)
* insert Translation(container.capacity ^definition, en-US, The maximum capacity of the container used for the specimen.)

* container.additive[x] ^short = "Additiv"
* insert Translation(container.additive[x] ^short, de-DE, Additiv)
* insert Translation(container.additive[x] ^short, en-US, Additives)

* container.additive[x] ^definition = "Zusatzstoffe, die im Probenbehälter enthalten sind z.B. wie Konservierungsmittel."
* insert Translation(container.additive[x] ^definition, de-DE, Zusatzstoffe\, die im Probenbehälter enthalten sind z.B. wie Konservierungsmittel.)
* insert Translation(container.additive[x] ^definition, en-US, Additives contained in the specimen container e.g. preservatives.)

* collection ^short = "Probenentnahme"
* insert Translation(collection ^short, de-DE, Probenentnahme)
* insert Translation(collection ^short, en-US, Specimen sampling)

* collection ^definition = "Informationen über den Prozess der Probenentnahme, einschließlich Entnahmezeitpunkt und -stelle."
* insert Translation(collection ^definition, de-DE, Informationen über den Prozess der Probenentnahme\, einschließlich Entnahmezeitpunkt und -stelle.)
* insert Translation(collection ^definition, en-US, Information about the specimen collection process\, including collection time and site.)

* collection.collected[x] ^short = "Entnahmezeitpunkt"
* insert Translation(collection.collected[x] ^short, de-DE, Entnahmezeitpunkt)
* insert Translation(collection.collected[x] ^short, en-US, Sampling time)

* collection.collected[x] ^definition = "Der Zeitpunkt, zu dem die Probe entnommen oder gesammelt wurde."
* insert Translation(collection.collected[x] ^definition, de-DE, Der Zeitpunkt\, zu dem die Probe entnommen oder gesammelt wurde.)
* insert Translation(collection.collected[x] ^definition, en-US, The time when the specimen was collected or obtained.)

* collection.bodySite ^short = "Anatomische Lokalisation"
* insert Translation(collection.bodySite ^short, de-DE, Anatomische Lokalisation)
* insert Translation(collection.bodySite ^short, en-US, Anatomical localisation)

* collection.bodySite ^definition = "Die Körperstelle, von der die Probe entnommen wurde gemäß icd-o-3."
* insert Translation(collection.bodySite ^definition, de-DE, Die Körperstelle\, von der die Probe entnommen wurde gemäß icd-o-3.)
* insert Translation(collection.bodySite ^definition, en-US, The body site from which the specimen was collected according to icd-o-3.)

* collection.fastingStatus[x] ^short = "Nüchternstatus"
* insert Translation(collection.fastingStatus[x] ^short, de-DE, Nüchternstatus)
* insert Translation(collection.fastingStatus[x] ^short, en-US, Fasting status)

* collection.fastingStatus[x] ^definition = "Der Nüchternstatus der Person zum Zeitpunkt der Probenentnahme."
* insert Translation(collection.fastingStatus[x] ^definition, de-DE, Der Nüchternstatus der Person zum Zeitpunkt der Probenentnahme.)
* insert Translation(collection.fastingStatus[x] ^definition, en-US, The fasting status of the person at the time the specimen was collected.)

* processing ^short = "Probenverarbeitung"
* insert Translation(processing ^short, de-DE, Probenverarbeitung)
* insert Translation(processing ^short, en-US, Specimen processing)

* processing ^definition = "Details zur Verarbeitung der Probe, einschließlich Prozeduren und Verarbeitungszeitraum."
* insert Translation(processing ^definition, de-DE, Details zur Verarbeitung der Probe\, einschließlich Prozeduren und Verarbeitungszeitraum.)
* insert Translation(processing ^definition, en-US, Details about the processing of the specimen\, including procedures and processing period.)

* processing.timePeriod ^short = "Verarbeitungszeitraum"
* insert Translation(processing.timePeriod ^short, de-DE, Verarbeitungszeitraum)
* insert Translation(processing.timePeriod ^short, en-US, Processing period)

* processing.timePeriod ^definition = "Der Zeitraum, in dem die Probe verarbeitet wurde."
* insert Translation(processing.timePeriod ^definition, de-DE, Der Zeitraum\, in dem die Probe verarbeitet wurde.)
* insert Translation(processing.timePeriod ^definition, en-US, The time period during which the specimen was processed.)

* processing.procedure ^short = "Verarbeitungstyp"
* insert Translation(processing.procedure ^short, de-DE, Verarbeitungstyp)
* insert Translation(processing.procedure ^short, en-US, Processing procedure)

* processing.procedure ^definition = "Die angewendete Prozedur zur Verarbeitung der Probe, z.B. Zentrifugation."
* insert Translation(processing.procedure ^definition, de-DE, Die angewendete Prozedur zur Verarbeitung der Probe\, z.B. Zentrifugation.)
* insert Translation(processing.procedure ^definition, en-US, The procedure applied to process the specimen\, e.g. centrifugation.)

* processing.additive ^short = "Additive bei Verarbeitung"
* insert Translation(processing.additive ^short, de-DE, Additive bei Verarbeitung)
* insert Translation(processing.additive ^short, en-US, Processing additives)

* processing.additive ^definition = "Zusatzstoffe, die während der Probenverarbeitung verwendet wurden, z.B. Fixierungsmittel."
* insert Translation(processing.additive ^definition, de-DE, Zusatzstoffe\, die während der Probenverarbeitung verwendet wurden\, z.B. Fixierungsmittel.)
* insert Translation(processing.additive ^definition, en-US, Additives used during the specimen processing\, e.g. fixatives.)

* request ^short = "Entnahme-ID"
* insert Translation(request ^short, de-DE, Entnahme-ID)
* insert Translation(request ^short, en-US, Collection ID)

* request ^definition = "Der Identifier der Probenentnahme."
* insert Translation(request ^definition, de-DE, Der Identifier der Probenentnahme.)
* insert Translation(request ^definition, en-US, The identifier for the specimen collection.)

* subject ^short = "Patient:in"
* insert Translation(subject ^short, de-DE, Patient:in)
* insert Translation(subject ^short, en-US, Patient)

* subject ^definition = "Verweis auf die Person, von der die Probe stammt."
* insert Translation(subject ^definition, de-DE, Verweis auf die Person\, von der die Probe stammt.)
* insert Translation(subject ^definition, en-US, Reference to the person from whom the specimen was collected.)

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
