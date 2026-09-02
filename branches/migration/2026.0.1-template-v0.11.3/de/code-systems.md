# CodeSystems - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **CodeSystems**

## CodeSystems

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Soweit möglich sollen Terminologien und eindeutige Codes verwendet werden, die internationalen Standards entsprechen.

Zur eindeutigen Identifizierung von Additiven, Containertypen, Probenart und Verarbeitungstyp wird die Verwendung von [SNOMED CT](https://www.snomed.org/) empfohlen. Die ValueSets sind im Specimen-Profil hinterlegt.

Für [Body Site](ValueSet-mii-vs-biobank-body-structures-sct.md) kann neben SNOMED CT auch die International Classification of Diseases for Oncology, v.3, Topography [(ICD-O-3)](https://terminology.hl7.org/2.1.0/CodeSystem-icd-o-3.html) verwendet werden.

Die entsprechenden Value Sets wurden erstellt; die vollständige, automatisch generierte Liste aller Value Sets und CodeSysteme dieses Moduls findet sich in der [Artefakt-Übersicht](artifacts.md).

#### Standard PREanalytical Code (SPREC)

Der [SPREC 4.0](https://www.researchgate.net/publication/383061419_Standard_PREanalytical_Code_Version_40) (Standard PREanalytical Code) wurde entwickelt, um ein umfassendes und einfach zu implementierendes Werkzeug zur Dokumentation der präanalytischen Sammlung, Verarbeitung und Lagerung von Bioproben bereitzustellen. Viele Elemente der SPREC, wie z.B. Probentypen, sind bereits in SNOMED CT INTERNATIONAL enthalten, viele aber auch nicht. Insbesondere der Modus der Zentrifugation lässt sich mit den aktuellen SNOMED-International-Codes nicht darstellen.

Die SNOMED CT Codes für SPREC-Begriffe wurden von der [SNOMED CT Spanish Extension](https://webs.somsns.es/cnr/Visor_EE.htm) als Ergebnis der Arbeit des Spanish Network of Biobanks zur Definition des Biobank-Refsets in SNOMED CT veröffentlicht.

Die gleichen Codes werden für die SNOMED International Edition eingereicht werden. Das Spanish Network of Biobanks und das Spanish National Release Center haben sich freundlicherweise bereit erklärt, die SNOMED CT Codes für SPREC noch vor der Veröffentlichung in der SNOMED International Edition mit der Medizininformatik-Initiative zu teilen. Insbesondere die Codes für den Modus der Zentrifugation können zusätzlich zu **73373003 |Specimen centrifugation (procedure)|** in `Specimen.processing.procedure` verwendet werden.

| | |
| :--- | :--- |
| 1001000257109 | Centrifugation at less than 1000g (relative centrifugal force) for 30 minutes without braking ramp at room temperature between 18 and 28 degrees Celsius |
| 911000257109 | Centrifugation at less than 3000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at room temperature between 18 and 28 degrees Celsius |
| 931000257100 | Centrifugation at less than 3000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at temperature between 2 and 10 degrees Celsius |
| 901000257107 | Centrifugation at less than 3000g (relative centrifugal force) between 10 and 15 minutes without braking ramp at room temperature between 18 and 28 degrees Celsius |
| 921000257102 | Centrifugation at less than 3000g (relative centrifugal force) between 10 and 15 minutes without braking ramp at temperature between 2 and 10 degrees Celsius |
| 2094511000122105 | Centrifugation at less than 3000g (relative centrifugal force) more than 15 minutes with braking ramp at temperature between 2 and 10 degrees Celsius |
| 2094501000122107 | Centrifugation at less than 3000g (relative centrifugal force) more than 15 minutes without braking ramp at temperature between 2 and 10 degrees Celsius |
| 981000257101 | Centrifugation at more than 10000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at room temperature between 18 and 28 degrees Celsius |
| 991000257104 | Centrifugation at more than 10000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at temperature between 2 and 10 degrees Celsius |
| 2094521000122104 | Centrifugation between 10000 y 80000g (relative centrifugal force) between 30 and 120 minutes with braking ramp at temperature between 2 and 10 degrees Celsius |
| 2094491000122101 | Centrifugation between 3000 - 6000 g (relative centrifugal force) in less than 10 minutes without brake ramp at room temperature between 18 and 28 degrees Celsius |
| 941000257105 | Centrifugation between 3000 and 6000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at room temperature between 18 and 28 degrees Celsius |
| 951000257108 | Centrifugation between 3000 and 6000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at room temperature between 2 and 10 degrees Celsius |
| 2094541000122109 | Centrifugation between 3000 and 6000g (relative centrifugal force) 15 to 30 minutes with brake ramp at room temperature between 18 and 28 degrees Celsius |
| 2094551000122106 | Centrifugation between 3000 and 6000g (relative centrifugal force) 15 to 30 minutes without brake ramp at room temperature between 18 and 28 degrees Celsius |
| 2094561000122108 | Centrifugation between 3000 and 6000g (relative centrifugal force) 30 to 60 minutes without brake ramp at room temperature between 18 and 28 degrees Celsius |
| 961000257106 | Centrifugation between 6000 and 10000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at room temperature between 18 and 28 degrees Celsius |
| 971000257103 | Centrifugation between 6000 and 10000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at room temperature between 2 and 10 degrees Celsius |
| 2094531000122101 | Ultracentrifugation at more than 80000g (relative centrifugal force) at temperature between 2 and 10 degrees Celsius |

Für die Achsen des SPREC, die sich bereits auf existierende SNOMED-Codes mappen lassen, wurden ConceptMaps entwickelt. Diese umfassen nicht immer alle möglichen Ausprägungen, da aufgrund der SPREC-Werte nicht immer ein eindeutiges Mapping möglich ist. Hier sollte ein Mapping aufgrund der im Quellsystem verfügbaren Daten erfolgen, alternativ kann auf die oben beschriebenen spanischen Codes ausgewichen werden.

### Mappings

Die im Folgenden aufgeführten Mappings sind als ConceptMaps maschinenlesbar als Teil des zu diesem IG gehörenden Packages verfügbar und können z.B. als Teil eines ETL-Prozesses oder mit einem Terminologieserver genutzt werden.

#### Probentypen

Die Codes werden typischerweise in `Specimen.type` verwendet: [ConceptMap SPREC Sample Type → SNOMED CT](ConceptMap-mii-cm-biobank-sample-type-sprec-sct.md)

#### Fixierungsart

Die Codes werden typischerweise in einer Substance verwendet, die als Additiv referenziert wird: [ConceptMap SPREC Fixation Type → SNOMED CT](ConceptMap-mii-cm-biobank-fixation-type-sprec-sct.md)

#### Primärcontainer

Die aus dem SPREC-Code abgeleiteten Informationen betreffen zum einen den `Specimen.container.type`, zum anderen den Code der im `Specimen.container.additive` verlinkten Substance. Die Informationen zum Container sind im target selbst, die zur Substance im target.product enthalten. Die Kapazität des Containers, die teilweise mit im SPREC codiert ist, soll gesondert über `Specimen.container.capacity` abgebildet werden (als Quantity). Die Temperaturbedingungen der Lagerung sollen ebenfalls gesondert über die [Extension Temperaturbedingungen](extensions.md) erfasst werden.

[ConceptMap SPREC Primary Container → SNOMED CT](ConceptMap-mii-cm-biobank-primary-container-sprec-sct.md)

#### Langzeitlagerung

Analog zum Primärcontainer betreffen die abgeleiteten Informationen Container und verlinkte Substance; Kapazität und Temperaturbedingungen werden gesondert abgebildet (siehe oben).

[ConceptMap SPREC Long Term Storage → SNOMED CT](ConceptMap-mii-cm-biobank-long-term-storage-sprec-sct.md)

#### Cell Line Ontology

Für Angaben im Zusammenhang mit Zelllinien und Organoiden sollen Codes aus der Cell Line Ontology verwendet werden. Dabei wurde sich für die Darstellungsweise mit Präfix „CLO:" entschieden. Da es hier noch keine Vorgabe durch HL7 International gibt, kann es zu Fehlern mit Terminologieservern kommen, die die Darstellung mit „CLO_" gewählt haben. Sollte es dadurch zu Problemen mit technischer Infrastruktur kommen, bitten wir um Meldung im [MII-Zulip-Chat](https://mii.zulipchat.com), um das Thema gemeinsam mit der SU-TermServ weiter bearbeiten zu können.

