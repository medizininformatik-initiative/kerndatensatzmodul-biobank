//Head
Profile: MII_PR_Biobank_Specimen_Bioprobe_Core
Parent: Specimen
Id: mii-pr-biobank-specimen-core
Title: "MII PR Biobank Specimen Bioprobe Core"
Description: "Basisiprofil zur Abbildung einer MII Bioprobe. Nicht zur direkten Implementierung gedacht, Module leiten bei Bedarf eigene Profile von diesem Profil ab."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"

//Translation Meta
* insert Translation(^name, en-US, MII_PR_Biobank_Specimen_Bioprobe_Core)
* insert Translation(^title, de-DE, Specimen Bioprobe Core)
* insert Translation(^title, en-US, Specimen Bioprobe Core)
* insert Translation(^description, de-DE, Basisiprofil zur Abbildung einer MII Bioprobe. Nicht zur direkten Implementierung gedacht\, Module leiten bei Bedarf eigene Profile von diesem Profil ab.)
* insert Translation(^description, en-US, Base profile for representing a MII bioprobe. Not intended for direct implementation\, modules derive their own profiles from this profile as needed.)

//Meta
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert Publisher
* insert LicenseCodeableCCBY40
* id MS
* meta MS
* meta.source MS
* meta.profile MS

//Profile

* extension contains MII_EX_Biobank_Feature_R5 named feature 0..* and MII_EX_Biobank_Ebene named probenebene 0..* MS

* identifier and type and container.specimenQuantity and status and note and parent and container and container.type and container.capacity 
and container.additive[x] and collection and collection.collected[x] and collection.bodySite and collection.fastingStatus[x] and processing
and processing.timePeriod and processing.procedure and processing.additive and request and subject MS

* insert Translation(identifier ^short, de-DE, Proben-ID)
* insert Translation(identifier ^short, en-US, Specimen ID)
* insert Translation(identifier ^definition, de-DE, Einrichtungsinterner Identifier der Probe.)
* insert Translation(identifier ^definition, en-US, Internal identifier of the specimen at the institution.)

* insert Translation(type ^short, de-DE, Probenart)
* insert Translation(type ^short, en-US, Specimen type)
* insert Translation(type ^definition, de-DE, Die Art der Probe\, codiert in SNOMED CT.)
* insert Translation(type ^definition, en-US, The type of the specimen\, encoded as SNOMED CT code.)

* insert Translation(container.specimenQuantity ^short, de-DE, Probenmenge)
* insert Translation(container.specimenQuantity ^short, en-US, Specimen quantity)
* insert Translation(container.specimenQuantity ^definition, de-DE, Die Menge des gesammelten Materials.)
* insert Translation(container.specimenQuantity ^definition, en-US, The amount of material collected.)

* insert Translation(status ^short, de-DE, Verfügbarkeitsstatus)
* insert Translation(status ^short, en-US, Availability status)
* insert Translation(status ^definition, de-DE, Der Status der Probe in Bezug auf die Verfügbarkeit für Forschung.)
* insert Translation(status ^definition, en-US, The status of the specimen in terms of its availability for research.)

* insert Translation(note ^short, de-DE, Projektnutzung)
* insert Translation(note ^short, en-US, Project usage)
* insert Translation(note ^definition, de-DE, Freitextangabe zur Verwendung der Probe in spezifischen Projekten.)
* insert Translation(note ^definition, en-US, Free-text information about the use of the specimen in specific projects.)

* insert Translation(parent ^short, de-DE, Ist gewonnen aus)
* insert Translation(parent ^short, en-US, Derived from)
* insert Translation(parent ^definition, de-DE, Referenz auf eine übergeordnete Probe\, aus der diese Probe gewonnen wurde.)
* insert Translation(parent ^definition, en-US, Reference to a parent specimen from which this specimen was derived.)

* insert Translation(container ^short, de-DE, Probenbehältnis)
* insert Translation(container ^short, en-US, Specimen container)
* insert Translation(container ^definition, de-DE, Informationen über den Behälter\, in dem die Probe aufbewahrt wird.)
* insert Translation(container ^definition, en-US, Information about the container in which the specimen is stored.)

* insert Translation(container.type ^short, de-DE, Containertyp)
* insert Translation(container.type ^short, en-US, Container type)
* insert Translation(container.type ^definition, de-DE, Der Typ des Probencontainers\, der für diese Probe verwendet wurde.)
* insert Translation(container.type ^definition, en-US, The type of container used for this specimen.)

* insert Translation(container.capacity ^short, de-DE, Containerkapazität)
* insert Translation(container.capacity ^short, en-US, Capacity)
* insert Translation(container.capacity ^definition, de-DE, Die maximale Kapazität des Containers\, der für die Probe verwendet wurde.)
* insert Translation(container.capacity ^definition, en-US, The maximum capacity of the container used for the specimen.)

* insert Translation(container.additive[x] ^short, de-DE, Additiv)
* insert Translation(container.additive[x] ^short, en-US, Additives)
* insert Translation(container.additive[x] ^definition, de-DE, Zusatzstoffe\, die im Probenbehälter enthalten sind z.B. wie Konservierungsmittel.)
* insert Translation(container.additive[x] ^definition, en-US, Additives contained in the specimen container e.g. preservatives.)

* insert Translation(collection ^short, de-DE, Probenentnahme)
* insert Translation(collection ^short, en-US, Specimen sampling)
* insert Translation(collection ^definition, de-DE, Informationen über den Prozess der Probenentnahme\, einschließlich Entnahmezeitpunkt und -stelle.)
* insert Translation(collection ^definition, en-US, Information about the specimen collection process\, including collection time and site.)

* insert Translation(collection.collected[x] ^short, de-DE, Entnahmezeitpunkt)
* insert Translation(collection.collected[x] ^short, en-US, Sampling time)
* insert Translation(collection.collected[x] ^definition, de-DE, Der Zeitpunkt\, zu dem die Probe entnommen oder gesammelt wurde.)
* insert Translation(collection.collected[x] ^definition, en-US, The time when the specimen was collected or obtained.)

* insert Translation(collection.bodySite ^short, de-DE, Anatomische Lokalisation)
* insert Translation(collection.bodySite ^short, en-US, anatomical localisation)
* insert Translation(collection.bodySite ^definition, de-DE, Die Körperstelle\, von der die Probe entnommen wurde gemäß icd-o-3.)
* insert Translation(collection.bodySite ^definition, en-US, The body site from which the specimen was collected according to icd-o-3.)

* insert Translation(collection.fastingStatus[x] ^short, de-DE, Nüchternstatus)
* insert Translation(collection.fastingStatus[x] ^short, en-US, Fasting status)
* insert Translation(collection.fastingStatus[x] ^definition, de-DE, Der Nüchternstatus der Person zum Zeitpunkt der Probenentnahme.)
* insert Translation(collection.fastingStatus[x] ^definition, en-US, The fasting status of the person at the time the specimen was collected.)

* insert Translation(processing ^short, de-DE, Probenverarbeitung)
* insert Translation(processing ^short, en-US, Specimen processing)
* insert Translation(processing ^definition, de-DE, Details zur Verarbeitung der Probe\, einschließlich Prozeduren und Verarbeitungszeitraum.)
* insert Translation(processing ^definition, en-US, Details about the processing of the specimen\, including procedures and processing period.)

* insert Translation(processing.timePeriod ^short, de-DE, Verarbeitungszeitraum)
* insert Translation(processing.timePeriod ^short, en-US, Processing period)
* insert Translation(processing.timePeriod ^definition, de-DE, Der Zeitraum\, in dem die Probe verarbeitet wurde.)
* insert Translation(processing.timePeriod ^definition, en-US, The time period during which the specimen was processed.)

* insert Translation(processing.procedure ^short, de-DE, Verarbeitungstyp)
* insert Translation(processing.procedure ^short, en-US, Processing procedure)
* insert Translation(processing.procedure ^definition, de-DE, Die angewendete Prozedur zur Verarbeitung der Probe\, z.B. Zentrifugation.)
* insert Translation(processing.procedure ^definition, en-US, The procedure applied to process the specimen\, e.g. centrifugation.)

* insert Translation(processing.additive ^short, de-DE, Additive bei Verarbeitung)
* insert Translation(processing.additive ^short, en-US, Processing additives)
* insert Translation(processing.additive ^definition, de-DE, Zusatzstoffe\, die während der Probenverarbeitung verwendet wurden\, z.B. Fixierungsmittel.)
* insert Translation(processing.additive ^definition, en-US, Additives used during the specimen processing\, e.g. fixatives.)

* insert Translation(request ^short, de-DE, Entnahme-ID)
* insert Translation(request ^short, en-US, Collection ID)
* insert Translation(request ^definition, de-DE, Der Identifier der Probenentnahme.)
* insert Translation(request ^definition, en-US, The identifier for the specimen collection.)

* insert Translation(subject ^short, de-DE, Patient:in)
* insert Translation(subject ^short, en-US, Patient)
* insert Translation(subject ^definition, de-DE, Verweis auf die Person\, von der die Probe stammt.)
* insert Translation(subject ^definition, en-US, Reference to the person from whom the specimen was collected.)


//Bioprobe

* status 1..1

* type 1..1
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "$this.system"
* type.coding ^slicing.rules = #open

* type.coding contains sct 1..* MS
* type.coding[sct].system = $SCT
* type.coding[sct] from MII_VS_Biobank_Probenart_SCT (extensible)


* subject 1..1
* subject only Reference(Patient)

//Container

* container.type from MII_VS_Biobank_Containertyp_SCT (extensible)
* container.type 1..1

* container.additiveReference only Reference(MII_PR_Biobank_Substance_Additiv)

//Entnahme

* collection 1..1

* collection.extension contains MII_EX_Biobank_Einstellung_Blutversorgung named einstellungBlutversorgung 0..1 MS

* collection.fastingStatusCodeableConcept from 	http://terminology.hl7.org/ValueSet/v2-0916 (required)

* collection.bodySite obeys mii-bb-1

* collection.bodySite.coding ^slicing.discriminator.type = #value
* collection.bodySite.coding ^slicing.discriminator.path = "$this.system"
* collection.bodySite.coding ^slicing.rules = #open

* collection.bodySite.coding contains sct 0..* MS and icd-o-3 0..* MS

* collection.bodySite.coding[sct] from MII_VS_Biobank_BodyStructures_SCT (required)
* collection.bodySite.coding[sct].system = $SCT
* collection.bodySite.coding[icd-o-3] from https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-topographie (required)
* collection.bodySite.coding[icd-o-3].system = "http://terminology.hl7.org/CodeSystem/icd-o-3"

* collection.collected[x] 1..1

//Verarbeitung/Lagerprozess

* processing.extension contains MII_EX_Biobank_Temperaturbedingungen named temperaturbedingungen 1..1 MS
* processing.procedure 1..1 MS

* processing.procedure.coding ^slicing.discriminator.type = #value
* processing.procedure.coding ^slicing.discriminator.path = "$this.system"
* processing.procedure.coding ^slicing.rules = #open

* processing.procedure.coding contains sct 1..* MS
* processing.procedure.coding[sct].system = $SCT
* processing.procedure.coding[sct] from MII_VS_Biobank_Laboratory_Procedure_SCT (preferred)

* processing.time[x] MS
* processing.timePeriod.start MS
* processing.timePeriod.end MS
* processing.additive only Reference(MII_PR_Biobank_Substance_Additiv)

* processing ^slicing.discriminator.type = #pattern
* processing ^slicing.discriminator.path = "$this.procedure.coding"
* processing ^slicing.rules = #open

* processing contains lagerprozess 0..* MS
* processing[lagerprozess].time[x] 1..1
* processing[lagerprozess].time[x] only Period
* processing[lagerprozess].timePeriod.start 1..1
* processing[lagerprozess].procedure.coding = $SCT#1186936003
