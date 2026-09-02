# Extensions - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **Extensions**

## Extensions

Die Extensions dieses Moduls, gruppiert nach dem Profil, in dem sie verwendet werden. Die technische Struktur jeder Extension findet sich auf der jeweiligen Artefaktseite.

### Extensions am Specimen (Bioprobe)

#### Probenebene

Mittels dieser Extension kann ausgedrückt werden, welcher Probenebene dieses Specimen zuzuordnen ist: [MII EX Biobank Probenebene](StructureDefinition-mii-ex-biobank-ebene.md)

#### Temperaturbedingungen

Um zu einer Verarbeitung oder Lagerung die jeweils herrschenden Temperaturbedingungen (in °C) anzugeben, soll diese Extension verwendet werden. Dabei soll nach Möglichkeit immer ein Wertebereich inkl. oberer und unterer Grenze angegeben werden: [MII EX Biobank Temperaturbedingungen](StructureDefinition-mii-ex-biobank-temperaturbedingungen.md)

#### Einstellung Blutversorgung

Zeitpunkt der Einstellung der Blutversorgung während der Entnahme. Wird z.B. für die Berechnung der kalten bzw. warmen Ischämiezeiten benötigt: [MII EX Biobank Einstellung Blutversorgung](StructureDefinition-mii-ex-biobank-einstellung-blutversorgung.md)

#### Verwaltende Organisation

Die Organisation, die die Probe verwaltet, soll mithilfe dieser Extension referenziert werden. Anfragen zu den Proben sollen mittels dieser Verlinkung und den in der Organization hinterlegten Kontaktinformationen möglich sein: [MII EX Biobank Verwaltende Organisation](StructureDefinition-mii-ex-biobank-verwaltende-organisation.md)

#### Diagnose

Mittels dieser Extension kann eine zur Probe gehörende Diagnose referenziert werden. Dies ist vor allem für Fälle gedacht, wo eine Zuordnung über Pathologiebericht oder Laborbefund nicht möglich ist: [MII EX Biobank Diagnose](StructureDefinition-mii-ex-biobank-diagnose.md)

#### Zahl Aliquots

Anzahl der Aliquots, wenn diese nicht als eigene FHIR-Ressourcen ausmodelliert werden: [MII EX Biobank Anzahl Aliquots](StructureDefinition-mii-ex-biobank-anzahl-aliquots.md)

### Extensions an der Organization (Sammlung/Biobank)

#### Rolle des Kontaktes

Mittels dieser Extension soll die Rolle der Kontaktperson in der probenverwaltenden Organisation angegeben werden, z.B. Principal Investigator, Direktor usw.: [MII EX Biobank KontaktRolle](StructureDefinition-mii-ex-biobank-kontaktrolle.md)

#### Beschreibung Sammlung

Mittels dieser Extension kann eine Freitextbeschreibung der Sammlung/Biobank erfolgen, die z.B. in einer Suche angezeigt werden kann. Die Extension stammt aus MIABIS on FHIR: [MIABIS Organization Description Extension](https://simplifier.net/resolve?canonical=https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-organization-description-extension)

### Extensions an der Zelllinie / am Organoid

#### Kulturprotokoll

Referenz auf das Dokument des angewendeten Kulturprotokolls bei der Erzeugung einer Zelllinie oder eines Organoids: [MII EX Biobank Kulturprotokoll](StructureDefinition-mii-ex-biobank-kulturprotokoll.md)

#### Modifikationen

Vorgenommene Modifikationen: [MII EX Biobank Modifikationen](StructureDefinition-mii-ex-biobank-modifikationen.md)

#### Zahl Passagen

Anzahl der durchgeführten Passagen zur Erzeugung einer Zelllinie oder eines Organoids: [MII EX Biobank Anzahl Passagen](StructureDefinition-mii-ex-biobank-anzahl-passagen.md)

#### Infektiositätsstatus

Extension zur Angabe des Infektiositätsstatus einer Probe anhand der Biosafety-Level-Einstufung (BSL-1 bis BSL-4, SNOMED CT) bzw. der Angabe, dass keine Infektionsgefahr bekannt ist: [MII EX Biobank Infektiositätsstatus](StructureDefinition-mii-ex-biobank-infektiositaetsstatus.md) (ValueSet: [Biosafety-Level](ValueSet-mii-vs-biobank-biosafety-level.md))

#### Focus

Um anzugeben, worauf sich die Probe bezieht, wird die Extension `specimen-focus` aus dem [HL7 Europe Laboratory Report IG](https://hl7.eu/fhir/laboratory/StructureDefinition-specimen-focus.html) eingebunden (externe Extension, Paket `hl7.fhir.eu.laboratory`).

> Einleitungssatz und dieser Abschnitt sind bei der Migration neu entstanden (Brückentext; die R5-Extension hatte keine eigene Quellseite).

### Weitere Extensions

* [MII EX Biobank Feature R5](StructureDefinition-mii-ex-biobank-feature-r5.md) – ermöglicht es, im Specimen das `feature`-Element aus FHIR R5 zu nutzen

