<!-- markdownlint-disable MD041 -->

Hier befindet sich die offizielle Version des Informationsmodells für das Kerndatensatzmodul Bioprobendaten als FHIR Logical Model: [MII LM Biobank](StructureDefinition-Biobank.html)

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Model existiert ein Mapping auf ein Element einer konkreten FHIR-Ressource:

<!-- GENERATED TABLE aus fsh-generated/resources/StructureDefinition-Biobank.json (differential.element: path, definition, mapping.map); nach Aenderungen am Logical Model neu generieren. -->

| Datensatz-Element | Erklärung | FHIR-Mapping |
|---|---|---|
| `Bioprobe` | Details zu einer Bioprobe | `Specimen` |
| `Bioprobe.Proben-ID` | Einrichtungsinterner Identifier der Probe | `Specimen.identifier` |
| `Bioprobe.Probenart` | Art der Probe; SCT verpflichtend; Beschränkung auf Specimen ValueSet erwünscht. | `Specimen.type` |
| `Bioprobe.Probenmenge` | Probenmenge | `Specimen.container.specimenQuantity` |
| `Bioprobe.Verfuegbarkeitsstatus` | Status der Probe / des Materials hinsichtlich der Verfügbarkeit | `Specimen.status` |
| `Bioprobe.Projektverwendung` | Freitextangabe zur Verwendung der Probe in Projekten | `Specimen.note` |
| `Bioprobe.SonstigeEigenschaften` | Freitextangabe weiterer Probeneigenschaften | `Specimen.note` |
| `Bioprobe.Entstanden-aus` | Referenz auf Bioprobe | `Specimen.parent` |
| `Bioprobe.FestgestellteDiagnose` | Verweis auf eine Diagnose für die Material in der Probe enthalten ist | `Specimen.extension[diagnose]` |
| `Bioprobe.gehoert-zu` | Zuordnung der Probe zu einer Sammlung/Biobank | `Specimen.extension[gehoertZu]` |
| `Bioprobe.Anzahl-Aliqouts` | Anzahl der Aliqouts. | `Specimen.extension[anzahlAliquots]` |
| `Bioprobe.Container` | Probenbehältnis | `Specimen.container` |
| `Bioprobe.Container.Containertyp` | Typ des Containers | `Specimen.container.type` |
| `Bioprobe.Container.Kapazitaet` | Kapazität des Probencontainers | `Specimen.container.capacity` |
| `Bioprobe.Container.VerwendungAdditiv` | Ja/Nein Angabe, ob ein Zusatzstoff verwendet wurde | `Specimen.container.additive` |
| `Bioprobe.Container.Additiv` | Zusatzstoffe im Container | `Specimen.container.additive` |
| `Bioprobe.Probenentnahme` | Informationen zur Entnahme der Probe | `Specimen.collection` |
| `Bioprobe.Probenentnahme.Entnahme-ID` | Entnahme-ID | `Specimen.collection.request` |
| `Bioprobe.Probenentnahme.EinstellungBlutversorgung` | Zeitpunkt der Einstellung der Blutversorgung zur Probe. Kann zur Berechnung der warmen Ischaemiezeit verwendet werden. | `Specimen.collection.extension[einstellungBlutversorgung]` |
| `Bioprobe.Probenentnahme.Entnahmezeitpunkt` | Zeitpunkt der Ent- / Abnahme der Probe. Kann zur Berechnung der kalten Ischaemiezeit verwendet werden. | `Specimen.collection.collected[x]` |
| `Bioprobe.Probenentnahme.Entnahmestelle` | Lokalisation der Körperstelle, von der die Probe stammt | `Specimen.collection.bodySite` |
| `Bioprobe.Probenentnahme.Nuechternstatus` | Nüchterstatus des:der Patent:in zum Zeitpunkt der Entnahme der Probe. Muss aus dem http://terminology.hl7.org/ValueSet/v2-0916 stammen. | `Specimen.collection.fastingStatusCodeableConcept` |
| `Bioprobe.Probenentnahme.NuechternstatusDauer` | Zeitliche Dauer der Nüchternheit vor der Probenentnahme | `Specimen.collection.fastingStatusDuration` |
| `Bioprobe.Verarbeitungsprozess` | Prozedur der Probenbearbeitung | `Specimen.processing` |
| `Bioprobe.Verarbeitungsprozess.Startzeitpunkt` | Zeitpunkt des Beginns der Probenbearbeitung | `Specimen.processing.timePeriod.start` |
| `Bioprobe.Verarbeitungsprozess.Endzeitpunkt` | Zeitpunkt des Abschlusses der Probenbearbeitung | `Specimen.processing.timePeriod.end` |
| `Bioprobe.Verarbeitungsprozess.Verarbeitungstyp` | Prozedur der Probenbearbeitung | `Specimen.processing.procedure` |
| `Bioprobe.Verarbeitungsprozess.Temperatur` | Temperatur bei der die Probenverarbeitung stattfand. Angabe exakt oder in Wertebereichen (siehe SPREC) | `Specimen.processing.extension[temperaturbedingungen]` |
| `Bioprobe.Verarbeitungsprozess.Modus` | Abhängig vom Verarbeitungstyp - bei Zentrifugation SPREC | `Specimen.processing.procedure` |
| `Bioprobe.Verarbeitungsprozess.VerwendungAdditive` | Ja/Nein Angabe, ob ein Zusatzstoff verwendet wurde | `Specimen.processing.additive` |
| `Bioprobe.Verarbeitungsprozess.Additiv` | Additive bei der Probenbearbeitung wie Fixationsmittel; Einbettungs- und Eindeckungsmedien | `Specimen.processing.additive` |
| `Bioprobe.Lagerprozess` | Lagerung einer Probe | `Specimen.processing[lagerprozess]` |
| `Bioprobe.Lagerprozess.Einlagerungszeitpunkt` | Zeitpunkt des Beginns der Einlagerung der Probe | `Specimen.processing[lagerprozess].timePeriod.start` |
| `Bioprobe.Lagerprozess.Auslagerungspunkt` | Zeitpunkt des Endes der Einlagerung der Probe | `Specimen.processing[lagerprozess].timePeriod.end` |
| `Bioprobe.Lagerprozess.Lagerungsbedingungen` | Temperaturbereich in dem die Probe gelagert wurde bzw. wird. Angabe in Wertebereichen wie in SPREC | `Specimen.processing[lagerprozess].extension[temperaturbedingungen]` |
| `Bioprobe.Laborbefund` | Referenz auf den zu einer Probe gehörenden Laborbefund |  |
| `Bioprobe.Pathologiebefund` | Referenz auf den zu einer Probe gehörenden Pathologiebefund |  |
| `Bioprobe.Zelllinie_Organoid` | Beschreibung einer Zelllinie/eines Organoides. Alle Attribute der Bioprobe sind hier ebenfalls anwendbar. | `Specimen` |
| `Bioprobe.Zelllinie_Organoid.Phaenotyp-Diagnose` | Phänotyp oder Diagnose der Zelllinie / des Organoids, wenn nicht patientenbezogen angebbar. | `Specimen.extension[diagnose] / https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation` |
| `Bioprobe.Zelllinie_Organoid.Karyotyp` | Karyotyp der Zelllinie/Organoids. | `Observation(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-karyotyp)` |
| `Bioprobe.Zelllinie_Organoid.Morphologie` | Morphologie der Zelllinie/Organoids. | `Observation(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-morphologie)` |
| `Bioprobe.Zelllinie_Organoid.Mutationen` | Mögliche Mutationen der Zelllinie/Organoids. | `Observation(Modul MolGen)` |
| `Bioprobe.Zelllinie_Organoid.Wachstumstyp` | Wachstumstyp der Zelllinie/Organoids. | `Observation(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-wachstumstyp)` |
| `Bioprobe.Zelllinie_Organoid.Zellproliferation` | Art der Zellproliferation der Zelllinie/Organoids. | `Observation(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-proliferation)` |
| `Bioprobe.Zelllinie_Organoid.Passage` | Anzahl der Passagen. | `Specimen.extension[anzahlPassagen]` |
| `Bioprobe.Zelllinie_Organoid.Modifikationen` | Optional: Vorgenommene Modifikationen. | `Specimen.extension[modifikationen]` |
| `Bioprobe.Zelllinie_Organoid.Qualitätsprüfung` | Z.B. Viabilität, Test auf Mykoplasmen, Wiederauftaubarkeit / Wiederinkulturnahme. | `Observation(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung)` |
| `Bioprobe.Zelllinie_Organoid.Protokoll-Kultur` | Kulturprotokoll der Zelllinie/Organoids. | `Specimen.extension[kulturprotokoll]` |
| `Bioprobe.Zelllinie_Organoid.Kulturbedigungen` | Kulturbedingungen der Zelllinie/Organoids. | `Observation` |
| `Probensammlung-Biobank` | Organisation, die Proben verwaltet | `Biobank` |
| `Probensammlung-Biobank.Kontakt` | Kontaktinformationen einer Sammlung/Biobank für Anfragen zu Bioproben | `Biobank.contact` |
| `Probensammlung-Biobank.Kontakt.Vorname` | Vorname der Ansprechperson | `Biobank.contact.given` |
| `Probensammlung-Biobank.Kontakt.Nachname` | Nachname der Ansprechperson | `Biobank.contact.family` |
| `Probensammlung-Biobank.Kontakt.E-Mail` | E-Mailadresse für Anfragen | `Biobank.contact.telecom[email]` |
| `Probensammlung-Biobank.Kontakt.Rolle` | Rolle der Ansprechperson in der Sammlung/Biobank | `Biobank.contact.extension[rolle]` |
| `Probensammlung-Biobank.Kontakt.Adresse` | Kontaktadresse für Forschungsvorhaben | `Biobank.contact.address` |
| `Probensammlung-Biobank.Sammlungs-ID` | Interner Identifer der Sammlung/Biobank | `Biobank.identifier` |
| `Probensammlung-Biobank.BBMRI-ERIC-ID` | Identifier der Sammlung/Biobank im BBMRI ERIC Netzwerk | `Biobank.identifier[bbmri-eric-id]` |
| `Probensammlung-Biobank.Akronym` | Akronym der Sammlung/Biobank | `Biobank.alias` |
| `Probensammlung-Biobank.Name` | Name der Sammlung/Biobank | `Biobank.name` |
| `Probensammlung-Biobank.Beschreibung` | Beschreibung der Sammlung/Biobank | `Biobank.extension[beschreibung]` |
| `Probensammlung-Biobank.Sammlungstyp` | Typ der Sammlung/Biobank gemäß BBMRI ERIC Directory Werteliste | `Biobank.extension[collectionSetting] / Biobank.extension[collectionDesign]` |
| `Probensammlung-Biobank.besteht-aus` | Verknüpfung der Teilsammlungen | `Biobank.partOf` |

#### Weitere Probeneigenschaften

In einigen Fällen kann es nötig sein, weitere Eigenschaften einer Probe wie z.B. Zellzahlen zu erfassen. In der aktuellen Version des Moduls werden dazu keine Vorgaben in Form von FHIR-Profilen gemacht, es wird aber eine Modellierung über die FHIR-Ressource Observation empfohlen. Hier kann die Probe im Feld *focus* referenziert werden. Als Codes können SNOMED-Codes wie *118218001 |Cell count (procedure)|* verwendet werden. In folgenden Versionen dieses Moduls werden hierzu möglicherweise weitere Festlegungen erfolgen.
