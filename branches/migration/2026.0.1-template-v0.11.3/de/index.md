# Startseite - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **Startseite**

## Startseite

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ImplementationGuide/mii-ig-biobank-de-v2026 | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-02-11 | *Maschinenlesbarer Name*:MII_IG_Biobank_DE |

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz-Moduls **Bioprobendaten** der Medizininformatik-Initiative (MII). Im Folgenden werden die Use Cases des Moduls sowie die dazugehörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.

### Beschreibung des Moduls „Bioprobendaten"

Bioproben werden prospektiv in Form von krankheitsspezifischen sowie populationsbezogenen Biobanken gesammelt. Sowohl die übergeordnete Biobank in ihrer Organisation, ihre verschiedenen Sammlungen in ihrem Fokus und ihrer Zusammensetzung, als auch die individuellen Proben müssen für eine sinnvolle Verwendung strukturiert beschrieben werden. Relevante Merkmale zur Probensammlung umfassen unter anderem die abgedeckten Krankheitsbilder, Probentypen und Zugangswege (hierbei handelt es sich um Metadaten). Probenspezifische Daten sollten Angaben zu Probentyp, Probenmaterial, Menge, Gewinnung, präanalytischer Verarbeitung (inkl. Aliquotierung, Pooling) und Lagerung enthalten. Klinische Daten zur Probe werden ausdrücklich nicht von diesem Modul abgedeckt, sondern sollten über die für die jeweilige Datenart vorgesehenen Module bereitgestellt werden.

Eine Bioprobe kann über eine Entnahme einem/einer Donor/Donorin (Modul Person) zugeordnet werden. Gleichzeitig erlaubt die Entnahme-Entität die Verknüpfung einer Diagnose (Modul Diagnose) als Indikation. Bei der Beschreibung der Bioprobe selbst wurde beschlossen, auf SNOMED CT Codes zur Angabe der Probenart zu setzen. Ein Mapping anderer Standards zur Codierung des Probentyps, insbesondere SPREC 4.0 und MIABIS Sample Type, wird als Teil des Implementation Guides bereitgestellt. Im vorliegenden Informationsmodell sollen Additive getrennt vom eigentlichen Probenmaterial erfasst werden. So erlaubt der mit der Bioprobe verbundene Primärcontainer neben der Angabe des Containertyps die Angabe eines Additivs. Hier sollen ebenfalls SNOMED CT Codes zum Einsatz kommen. Weitere Additive können als Teil von Verarbeitungsschritten erfasst werden. Mittels der Verarbeitungsschritte kann auch die Gewinnung einer oder mehrerer Probe(n) aus einer anderen Probe modelliert werden. Falls Daten zum Verarbeitungsschritt fehlen, kann dies auch über eine direkte Verknüpfung der entsprechenden Proben geschehen.

Die Bioprobe kann außerdem Pathologiebefunden (Modul Pathologie), Laborbefunden (Modul Labor) sowie Diagnosen (Modul Diagnose) zugeordnet werden, um sie mit weiteren klinischen Informationen zu verbinden.

Die Lagerung einer Bioprobe kann durch eine Reihe von Lagerprozessen, die jeweils Beginn, Ende und Lagerungsbedingungen umfassen, nachvollzogen werden. Lagerprozesse werden wie auch jede Bioprobe einer Probensammlung/Biobank zugeordnet, die als Kontaktstelle für Anfragen zur Probe fungiert. Eine Zuordnung von z.B. untergeordneten Sammlungen zu einer Biobank ist hier über eine Referenz möglich. Zusätzlich können weitere aus dem auf MIABIS aufbauenden BBMRI-ERIC-Directory-Datenmodell übernommene Attribute wie Name oder Sammlungstyp erfasst werden. Um mit der eine Probe verwaltenden Organisation in Verbindung treten zu können, ist außerdem die Angabe eines Kontakts vorgesehen.

Auch wenn der SPREC-4.0-Code nicht direkt Teil des Datenmodells ist, finden sich doch alle darin enthaltenen Datenelemente im vorliegenden Datenmodell wieder.

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik-Initiative erstellt worden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

### Ansprechpartner

* Buckow, Karoline – MII-Koordinationsstelle
* Deppenwiese, Noemi – MIRACUM

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org) im Stream „german/mi-initiative" gestellt werden.

Anmerkungen und Kritik werden in Form von Issues im [GitHub-Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-biobank/issues) stets gern entgegengenommen.

### Autoren (in alphabetischer Reihenfolge)

* Buckow, Karoline – MII-Koordinationsstelle
* Deppenwiese, Noemi – MIRACUM
* Engels, Cecilia – German Biobank Network (GBN), Deutsches Konsortium für Translationale Krebsforschung (DKTK)
* Geiger, Jörg – Interdisziplinäre Biomaterial- und Datenbank Würzburg (ibdw)
* Kirsten, Romy – Integrated Biobank Mannheim (IBM)
* Kirsten, Toralf – SMITH
* Klar, Rhena – MIRACUM
* Köhler, Stefanie – Central Biobank Erlangen (CeBE)
* Menche, Constantin – Deutsches Konsortium für Translationale Krebsforschung (DKTK)
* Otto, Christoph – Experimentelle Viszeralchirurgie, Klinik für Chirurgie I, Universitätsklinikum Würzburg
* Rech, Anne – Experimentelle Viszeralchirurgie, Klinik für Chirurgie I, Universitätsklinikum Würzburg
* Rinaldi, Eugenia – HiGHmed
* Roßmann, Kerstin – Experimentelle Viszeralchirurgie, Klinik für Chirurgie I, Universitätsklinikum Würzburg
* Rößner, Miriam – MIRACUM
* Saati, Mahasen – Experimentelle Viszeralchirurgie, Klinik für Chirurgie I, Universitätsklinikum Würzburg
* Schönfeld, Ida – BioBank Dresden (BBD)
* Siddiqui, Roman – MII-Koordinationsstelle
* Skowronek, Patrick – UMM, DKFZ, DKTK, DZIF

### Copyright-Hinweis, Nutzungshinweise

Copyright © 2021: TMF e. V., Charlottenstraße 42, 10117 Berlin

Der Inhalt dieser Spezifikation ist öffentlich. Die Nachnutzungs- bzw. Veröffentlichungsansprüche sind nicht beschränkt.

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

### Disclaimer

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die das Copyright von HL7 International gilt.

