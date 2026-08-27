<!-- markdownlint-disable MD041 -->

<!-- DERIVED:stand-in source=MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/Index.page.md gate=B -->
> Diese Einleitungszeilen und die Linkliste sind bei der Migration neu entstanden (die Quell-Hubseite war absichtlich leer).
{: .ig-highlight .ig-highlight-grey}

Diese Seite beschreibt die Anwendungsszenarien des Moduls; die Unterseiten vertiefen einzelne Aspekte:

* [Hinweise für Implementierer:innen](implementer-guidance.html) – Kontext im Gesamtprojekt und Referenzen (SPREC, MIABIS, BBMRI-ERIC, GBN)
* [UML-Diagramme](uml-diagrams.html) – das Informationsmodell als UML-Klassendiagramm
* [Glossar](glossary.html) – Begriffsdefinitionen (Primärprobe, Aliquotgruppe, Aliquot, …)

### Beschreibung von Szenarien für die Anwendung der Module

#### Probensuche

In einem föderierten Netzwerk heterogener Biobanken an unterschiedlichen Universitätsstandorten in ganz Deutschland ermöglicht dieses Modul die Datenharmonisierung unter möglichst geringem Verlust der lokalen Information und Aufwertung der Proben durch Addition zusätzlicher klinischer Parameter. Bereits etablierte Anwendungen dieser Harmonisierung, die es Forschenden ermöglichen, deutschlandweit nach vergleichbaren Bioproben zu suchen, sind der [Sample Locator](https://samplelocator.bbmri.de/) und das [Forschungsdatenportal für Gesundheit](https://forschen-fuer-gesundheit.de/). Damit können Forschende an zentraler Stelle Anfragen formulieren und erhalten Antworten aus allen teilnehmenden Standorten.

#### Berücksichtigung der Probenqualität bei Auswertungen

Um reproduzierbare Ergebnisse zu erhalten, ist es notwendig, dass Bioproben mit vergleichbaren Qualitätsparametern, wie Verzögerungszeiten (Ischämie), Lagerzyklen, Verarbeitungsschritten usw. eingesetzt werden. Das Modul unterstützt die biomedizinische Forschung, indem es solche Parameter abbildbar macht.
