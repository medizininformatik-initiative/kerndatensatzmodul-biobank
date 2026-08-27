<!-- markdownlint-disable MD041 -->

### Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

Bioproben werden sowohl in klinischen als auch in populationsbezogenen Biobanken gesammelt, aufbereitet und gelagert, um hochwertige Proben für wissenschaftliche Projekte zur Verfügung stellen zu können.

Sowohl die unterschiedlichen Sammlungen in einer Biobank als auch die individuellen Proben müssen für das bessere Auffinden von Proben und deren sinnvolle Verwendung strukturiert beschrieben werden. Relevante Merkmale zu einer Probensammlung umfassen unter anderem die abgedeckten Krankheitsbilder, Probentypen und Zugangswege zu den Proben und zugehörigen Daten.

Probenspezifische Daten sollten Angaben zu Probentyp, Probenmaterial, Menge, Gewinnung, präanalytischer Verarbeitung und Lagerung enthalten. Klinische Daten zur Probe werden ausdrücklich nicht von diesem Modul abgedeckt, sondern sollen über die für die jeweilige Datenart vorgesehenen Module bereitgestellt werden.

Dieses Modul ist mit den Modulen [Pathologie-Befund](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Pathologie_Befund_V2025/MIIIGModulPathologieBefund.html), [Molekulargenetischer Befundbericht](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Molekulargenetischer_Befundbericht_V2025/implementation-guides-ImplementationGuide-2025.x-DE-MIIIGModulMolGenDE-IGMIIKDSModulMolekulargenetischerBefundbericht.html), [Onkologie](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie_V2025/MIIIGModulOnkologie.html) und [Laborbefund](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Laborbefund_V2025/MIIIGModulLaborbefund.html) verknüpft, wenn Proben für weitere Untersuchungen in der Biobank aufbewahrt werden.

Außerdem wird das Modul [Person](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Person/IGMIIKDSModulPerson.html) genutzt, um Patientendaten zu erfassen, sowie das Modul [Diagnose](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Diagnose/IGMIIKDSModulDiagnose.html), um die Indikation einer Entnahme oder Diagnoseinformationen zu einer Probe darzustellen.

### Referenzen

#### SPREC

Der [SPREC 4.0](https://www.researchgate.net/publication/383061419_Standard_PREanalytical_Code_Version_40) (Standard PREanalytical Code) wurde entwickelt, um ein umfassendes und einfach zu implementierendes Werkzeug zur Dokumentation der präanalytischen Sammlung, Verarbeitung und Lagerung von Bioproben bereitzustellen. SPREC unterscheidet zwischen Gewebe- und Flüssigproben und hat sieben Stellen. Die Informationen zu diesen Stellen finden sich im Modul wieder. Es werden nicht direkt die SPREC-Werte genutzt, sondern es soll ein Mapping nach SNOMED CT erfolgen. Weitere Informationen dazu finden sich im Abschnitt [Terminologien](code-systems.html).

#### MIABIS

Der [MIABIS (Minimum Information About BIobank data Sharing) 3.0 Core](https://pubmed.ncbi.nlm.nih.gov/38497765/) [und die Sample, Donor and Event Extension](https://pmc.ncbi.nlm.nih.gov/articles/PMC7310316/) wurden für dieses Modul insbesondere bei der Konzeption der Sammlung/Biobank herangezogen und einige Attribute auch direkt dort umgesetzt. Für den Typ der Sammlung werden direkt die MIABIS-Ausprägungen genutzt, siehe [Terminologien](code-systems.html). Dabei ist zu beachten, dass MIABIS 3.0 explizit zwischen Biobanks, Collections und Research Resources unterscheidet, die in diesem Modul alle unter die Kategorie Sammlung/Biobank fallen.

#### BBMRI-ERIC

[BBMRI-ERIC](https://www.bbmri-eric.eu/) ist eine europäische Forschungsinfrastruktur für Biobanking. Sie bringt alle wichtigen Akteure aus dem Bereich Biobanking zusammen – Forschende, Biobanker, Industrie und Patienten –, um die biomedizinische Forschung zu fördern. Zu diesem Zweck bietet sie unter anderem eine Reihe von Online-Tools und Software-Lösungen für Biobanker und Forschende, mit dem Ziel, neue Therapien zu ermöglichen. Unter anderem werden das [BBMRI-Directory](https://directory.bbmri-eric.eu) und der diesem zugrunde liegende [MIABIS-Standard](https://www.bbmri-eric.eu/howtomiabis/) von BBMRI-ERIC koordiniert.

#### GBN

Das [German Biobank Network (GBN)](https://www.bbmri.de) bietet der deutschen Biobanken-Community eine zentrale Kooperationsplattform und vertritt deutsche Interessen im europäischen Biobankennetzwerk BBMRI-ERIC. Seit Juli 2025 ist es zudem als zentrale Infrastruktur für das Biobanking in der Universitätsmedizin im Netzwerk Universitätsmedizin (NUM) verankert. Mit seinem Engagement für das Biobanking trägt GBN zum wissenschaftlichen Fortschritt auf dem Weg zur Präzisionsmedizin bei. Eine Entwicklung des GBN ist der Sample Locator, der eine FHIR-basierte Probensuche ermöglicht. Bei der Erstellung des Moduls sind die Vorarbeiten aus diesem Projekt eingeflossen.
