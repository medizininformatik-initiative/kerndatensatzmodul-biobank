## Referenzen

### SPREC

Der [SPREC 4.0](https://www.researchgate.net/publication/383061419_Standard_PREanalytical_Code_Version_40) (Standard PREanalytical Code) wurde entwickelt, um ein umfassendes und einfach zu implementierendes Werkzeug zur Dokumentation der präanalytischen Sammlung, Verarbeitung und Lagerung von Bioproben bereitzustellen. SPREC unterscheidet zwischen Gewebe- und Flüssigproben und hat sieben Stellen. Diese Informationen zu diesen Stellen finden sich im Modul wieder. Es werden nicht direkt die SPREC-Werte genutzt, sondern es soll ein Mapping nach SNOMED CT erfolgen. Weitere Informationen dazu finden sich im Abschnitt [Terminologien](terminologien).

### MIABIS
Der [MIABIS (Minimum Information About BIobank data Sharing ) 2.0 Core](https://www.liebertpub.com/doi/full/10.1089/bio.2015.0070) wurde für dieses Modul insbesondere bei der Konzeption der Sammlung/Biobank herangezogen und einige Attribute auch direkt dort umgesetzt. Für den Typ der Sammlung werden direkt die MIABIS Ausprägungen genutzt, siehe [Terminologien](terminologien). Dabei ist zu beachten, dass MIABIS 2.0 explizit zwischen Biobanks, Collections und Studies unterscheidet, die in diesem Modul alle unter die Kategorie Sammlung/Biobank fallen.

### BBMRI-ERIC
[BBMRI-ERIC](https://www.bbmri-eric.eu/) ist eine europäische Forschungsinfrastruktur für Biobanking. Sie bringt alle wichtigen Akteure aus dem Bereich Biobanking zusammen - Forscher, Biobanker, Industrie und Patienten - um die biomedizinische Forschung zu fördern. Zu diesem Zweck bietet sie unter anderem eine Reihe von Online-Tools und Software-Lösungen für Biobanker und Forscher, mit dem Ziel, neue Therapien zu ermöglichen. Unter anderem werden das [BBMRI-Directory](https://directory.bbmri-eric.eu) und der diesem zugrunde liegende [MIABIS-Standard](https://www.bbmri-eric.eu/services/miabis/) von BBMRI-ERIC koordiniert.

### GBN
Das [German Biobank Network (GBN)](https://www.bbmri.de) bietet der deutschen Biobanken-Community eine zentrale Kooperationsplattform und vertritt deutsche Interessen im europäischen Biobankennetzwerk BBMRI-ERIC. Mit seinem Engagement für das Biobanking trägt GBN zum wissenschaftlichen Fortschritt auf dem Weg zur Präzisionsmedizin bei. Eine Entwicklung des GBN ist der Sample Locator, der eine FHIR-basierte Probensuche umsetzt. Bei der Erstellung des Modules sind die Vorarbeiten aus diesem Projekt eingeflossen.
