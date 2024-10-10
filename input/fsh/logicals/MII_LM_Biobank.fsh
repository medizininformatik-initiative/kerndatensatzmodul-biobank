Logical: MII_LM_Biobank
Parent: Element
Id: Biobank
Description: "Logische Repräsentation des Erweiterungsmoduls Biobank"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/LogicalModel/Biobank"
//* insert PR_CS_VS_Version

* Bioprobe 0..* BackboneElement "Details zu einer Bioprobe"
  * Proben-ID 0..1 http://hl7.org/fhir/StructureDefinition/Identifier "Einrichtungsinterner Identifier der Probe"
  * Probenart 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Art der Probe; SCT verpflichtend; Beschränkung auf Specimen ValueSet erwünscht."
  * Probenmenge 0..1 http://hl7.org/fhir/StructureDefinition/Quantity "Probenmenge"
  * Verfuegbarkeitsstatus 0..1 http://hl7.org/fhir/StructureDefinition/code "Status der Probe / des Materials hinsichtlich der Verfügbarkeit"
  * Projektverwendung 0..1 http://hl7.org/fhir/StructureDefinition/string "Freitextangabe zur Verwendung der Probe in Projekten"
  * SonstigeEigenschaften 0..1 http://hl7.org/fhir/StructureDefinition/string "Freitextangabe weiterer Probeneigenschaften"
  * Ist-gewonnen-aus 0..1 http://hl7.org/fhir/StructureDefinition/Reference "Referenz auf Bioprobe"
  * FestgestellteDiagnose 0..1 http://hl7.org/fhir/StructureDefinition/Reference "Verweis auf eine Diagnose für die Material in der Probe enthalten ist"
  * gehoert-zu 0..1 http://hl7.org/fhir/StructureDefinition/Reference "Zuordnung der Probe zu einer Sammlung/Biobank"
  
  * Container 0..1 BackboneElement "Probenbehältnis"
    * Containertyp 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Typ des Containers"
    * Kapazitaet 0..1 http://hl7.org/fhir/StructureDefinition/Quantity "Kapazität des Probencontainers"
    * VerwendungAdditiv 0..1 http://hl7.org/fhir/StructureDefinition/boolean "Ja/Nein Angabe, ob ein Zusatzstoff verwendet wurde"
    * Additiv 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Zusatzstoffe im Container"
  
  * Probenentnahme 0..1 BackboneElement "Informationen zur Entnahme der Probe"
    * Entnahme-ID 0..1 http://hl7.org/fhir/StructureDefinition/Identifier "Entnahme-ID"
    * EinstellungBlutversorgung 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt der Einstellung der Blutversorgung zur Probe. Kann zur Berechnung der warmen Ischaemiezeit verwendet werden."
    * Entnahmezeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt der Ent- / Abnahme der Probe. Kann zur Berechnung der kalten Ischaemiezeit verwendet werden."
    * Entnahmestelle 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Lokalisation der Körperstelle, von der die Probe stammt"
    * Nuechternstatus 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Nüchterstatus des:der Patent:in zum Zeitpunkt der Entnahme der Probe. Muss aus dem http://terminology.hl7.org/ValueSet/v2-0916 stammen."
    * NuechternstatusDauer 0..1 http://hl7.org/fhir/StructureDefinition/Quantity "Zeitliche Dauer der Nüchternheit vor der Probenentnahme"
  
  * Verarbeitungsprozess 0..1 BackboneElement "Prozedur der Probenbearbeitung"
    * Startzeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt des Beginns der Probenbearbeitung"
    * Endzeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt des Abschlusses der Probenbearbeitung"
    * Verarbeitungstyp 0..1 BackboneElement "Prozedur der Probenbearbeitung"
    * Temperatur 0..1 http://hl7.org/fhir/StructureDefinition/Range "Temperatur bei der die Probenverarbeitung stattfand. Angabe exakt oder in Wertebereichen (siehe SPREC)"
    * Modus 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Abhängig vom Verarbeitungstyp - bei Zentrifugation SPREC"
    * VerwendungAdditive 0..1 http://hl7.org/fhir/StructureDefinition/boolean "Ja/Nein Angabe, ob ein Zusatzstoff verwendet wurde"
    * Additiv 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Additive bei der Probenbearbeitung wie Fixationsmittel; Einbettungs- und Eindeckungsmedien"
  
  * Lagerprozess 0..1 BackboneElement "Lagerung einer Probe"
    * Einlagerungszeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt des Beginns der Einlagerung der Probe"
    * Auslagerungspunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt des Endes der Einlagerung der Probe"
    * Lagerungsbedingungen 0..1 http://hl7.org/fhir/StructureDefinition/Range "Temperaturbereich in dem die Probe gelagert wurde bzw. wird. Angabe in Wertebereichen wie in SPREC"
  
  * Laborbefund 0..1 http://hl7.org/fhir/StructureDefinition/Reference "Referenz auf den zu einer Probe gehörenden Laborbefund"
  * Pathologiebefund 0..1 http://hl7.org/fhir/StructureDefinition/Reference "Referenz auf den zu einer Probe gehörenden Pathologiebefund"

* Probensammlung-Biobank 0..1 BackboneElement "Organisation, die Proben verwaltet"
  * Kontakt 0..* BackboneElement "Kontaktinformationen einer Sammlung/Biobank für Anfragen zu Bioproben"
    * Vorname 0..1 http://hl7.org/fhir/StructureDefinition/string "Vorname der Ansprechperson"
    * Nachname 0..1 http://hl7.org/fhir/StructureDefinition/string "Nachname der Ansprechperson"
    * E-Mail 0..1 http://hl7.org/fhir/StructureDefinition/string "E-Mailadresse für Anfragen"
    * Rolle 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Rolle der Ansprechperson in der Sammlung/Biobank"
    * Adresse 0..1 http://hl7.org/fhir/StructureDefinition/Address "Kontaktadresse für Forschungsvorhaben"
  
  * Sammlungs-ID 0..1 http://hl7.org/fhir/StructureDefinition/Identifier "Interner Identifer der Sammlung/Biobank"
  * BBMRI-ERIC-ID 0..1 http://hl7.org/fhir/StructureDefinition/Identifier "Identifier der Sammlung/Biobank im BBMRI ERIC Netzwerk"
  * Akronym 0..1 http://hl7.org/fhir/StructureDefinition/string "Akronym der Sammlung/Biobank"
  * Name 0..1 http://hl7.org/fhir/StructureDefinition/string "Name der Sammlung/Biobank"
  * Beschreibung 0..1 http://hl7.org/fhir/StructureDefinition/string "Beschreibung der Sammlung/Biobank"
  * Sammlungstyp 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Typ der Sammlung/Biobank gemäß BBMRI ERIC Directory Werteliste"
  * besteht-aus 0..* http://hl7.org/fhir/StructureDefinition/Reference "Verknüpfung der Teilsammlungen"

Mapping: MII_LM_Biobank
Id: FHIR
Title: "Biobank LogicalModel FHIR Mapping"
Source: MII_LM_Biobank
* Bioprobe -> "Specimen"
  * Proben-ID -> "Specimen.identifier"
  * Probenart -> "Specimen.type"
  * Probenmenge -> "Specimen.container.specimenQuantity"
  * Verfuegbarkeitsstatus -> "Specimen.status"
  * Projektverwendung -> "Specimen.note"
  * SonstigeEigenschaften -> "Specimen.note"
  * Ist-gewonnen-aus -> "Specimen.parent"
  * FestgestellteDiagnose -> "Specimen.extension[diagnose]"
  * gehoert-zu -> "Specimen.extension[gehoertZu]"
  * Container -> "Specimen.container"
    * Containertyp -> "Specimen.container.type"
    * Kapazitaet -> "Specimen.container.capacity"
    * VerwendungAdditiv -> "Specimen.container.additive"
    * Additiv -> "Specimen.container.additive"
  * Probenentnahme -> "Specimen.collection"
    * Entnahme-ID -> "Specimen.collection.request"
    * EinstellungBlutversorgung -> "Specimen.collection.extension[einstellungBlutversorgung]"
    * Entnahmezeitpunkt -> "Specimen.collection.collected[x]"
    * Entnahmestelle -> "Specimen.collection.bodySite"
    * Nuechternstatus -> "Specimen.collection.fastingStatusCodeableConcept"
    * NuechternstatusDauer -> "Specimen.collection.fastingStatusDuration"
  * Verarbeitungsprozess -> "Specimen.processing"
    * Startzeitpunkt -> "Specimen.processing.timePeriod.start"
    * Endzeitpunkt -> "Specimen.processing.timePeriod.end"
    * Verarbeitungstyp -> "Specimen.processing.procedure"
    * Temperatur -> "Specimen.processing.extension[temperaturbedingungen]"
    * Modus -> "Specimen.processing.procedure"
    * VerwendungAdditive -> "Specimen.processing.additive"
    * Additiv -> "Specimen.processing.additive"
  * Lagerprozess -> "Specimen.processing[lagerprozess]"
    * Einfrierzeitpunkt -> "Specimen.processing[lagerprozess].timePeriod.start"
    * Auftauzeitpunkt -> "Specimen.processing[lagerprozess].timePeriod.end"
    * Lagerungsbedingungen -> "Specimen.processing[lagerprozess].extension[temperaturbedingungen]"

* Probensammlung-Biobank -> "Biobank"
  * Kontakt -> "Biobank.contact"
    * Vorname -> "Biobank.contact.given"
    * Nachname -> "Biobank.contact.family"
    * E-Mail -> "Biobank.contact.telecom[email]"
    * Rolle -> "Biobank.contact.extension[rolle]"
    * Adresse -> "Biobank.contact.address"
  * Sammlungs-ID -> "Biobank.identifier"
  * BBMRI-ERIC-ID -> "Biobank.identifier[bbmri-eric-id]"
  * Sammlungstyp -> "Biobank.type"
  * Name -> "Biobank.name"
  * Akronym -> "Biobank.alias"
  * Beschreibung -> "Biobank.extension[beschreibung]"
  * besteht-aus -> "Biobank.partOf"
