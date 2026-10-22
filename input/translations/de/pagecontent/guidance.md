<!-- markdownlint-disable MD041 -->

Diese Seite beschreibt die Anwendungsszenarien des Moduls; die Unterseiten vertiefen einzelne Aspekte:

* [Anleitung für Forschende](researcher-guidance.html) – Machbarkeit und Probenqualität aus Sicht der Forschenden
* [Anleitung für Implementierende](implementer-guidance.html) – Kontext im Gesamtprojekt und Referenzen (SPREC, MIABIS, BBMRI-ERIC, GBN)
* [Datensätze und Beschreibungen](logical-models.html) – der Datensatz des Moduls als logisches Modell mit FHIR-Mapping
* [UML-Diagramme](uml-diagrams.html) – das Informationsmodell als UML-Klassendiagramm
* [Glossar](glossary.html) – Begriffsdefinitionen (Primärprobe, Aliquotgruppe, Aliquot, …)

### Anwendungsszenarien des Moduls

#### Probensuche

In einem föderierten Netzwerk heterogener Biobanken an unterschiedlichen Universitätsstandorten in ganz Deutschland ermöglicht dieses Modul die Datenharmonisierung unter möglichst geringem Verlust der lokalen Information und Aufwertung der Proben durch Addition zusätzlicher klinischer Parameter. Bereits etablierte Anwendungen dieser Harmonisierung, die es Forschenden ermöglichen, deutschlandweit nach vergleichbaren Bioproben zu suchen, sind der [Sample Locator](https://samplelocator.bbmri.de/) und das [Forschungsdatenportal für Gesundheit](https://forschen-fuer-gesundheit.de/). Damit können Forschende an zentraler Stelle Anfragen formulieren und erhalten Antworten aus allen teilnehmenden Standorten.

#### Berücksichtigung der Probenqualität bei Auswertungen

Um reproduzierbare Ergebnisse zu erhalten, ist es notwendig, dass Bioproben mit vergleichbaren Qualitätsparametern, wie Verzögerungszeiten (Ischämie), Lagerzyklen, Verarbeitungsschritten usw. eingesetzt werden. Das Modul unterstützt die biomedizinische Forschung, indem es solche Parameter abbildbar macht.
