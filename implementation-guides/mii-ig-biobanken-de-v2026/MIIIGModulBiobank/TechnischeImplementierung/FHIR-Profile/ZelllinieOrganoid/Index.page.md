## Specimen (Zellinie/Organoid)

Mittels der Specimen-Ressource können neben der Biorprobe auch Zellinien und Organoide abgebildet werden. Vom Modell her handelt es sich dabei um eine Erweiterung des Biorpben-Profiles um spezifische Felder miteles Exensions sowie das Specimen referenzierenden Observations. Welche Extensions und/oder Observations dabei passend sind hängt vom jeweiligen Anwendungsfall ab. 

DER REST DIESER SEITE IST NOCH NICHT GANZ AN ZELLINIE / ORGANOID ANGEPASST!

Canonical: 
```https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/ZellinieOrganoid```

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/ZellinieOrganoid, snaphot}}

<br>

| FHIR Element | Erklärung |
|--------------|-----------|
| extension.diagnose | Falls keine Zuordnung der Probe zu einer Diagnose über einen Labor-/Pathologiebefund möglich ist, kann hier auf eine Condition verlinkt werden. In dieser soll immer auch die Quelle der Information angegeben werden, wenn auf eine neu erstellte Condition referenziert wird.|
| extension.gehoertZu | Zuordnung der Probe zu einer Sammlung/Biobank |
| identifier | Proben-ID(s) |
| status | Verfügbarkeitsstatus der Probe |
| type | Probenart als SNOMED-CT Code |
| parent | Verlinkung auf Elternprobe(n) |
| request | Verlinkung auf eine ServiceRequest Ressource, über die dann in reasonCode eine Indikation angegeben kann sowie eine Procedure über based on verlinken kann. In der Procedure können dann wiederum weitere Informationen zur Entnahme erfasst werden oder meherere Proben der selben Entnahme zugeordent werden.  |
| collection.extension.einstellungBlutversorgung | Zeitpunkt der Einstellung der Blutversorgung sofern anwendbar |
| collection.collected[x] | Zeitpunkt/Zeitraum der Probengewinnung |
| collection.bodySite | Entnahmestelle, vorzugsweise als SNOMED oder ICD-O-3 Topographie Code |
| collection.fastingStatusCodeableConcept | Nüchternstatus des:der Spender:in bei Probenentnahme |
| processing | Verarbeitungs- oder Lagerprozess |
| processing.extension.temperaturbedingungen | Temperaturbedingungen des Verarbeitungs- oder Lagerprozesses|
| processing.procedure | Mithilfe dieses Codes wird zwischen Lager- und Verarbeitungsprozess sowie verschiedenen Verarbeitungsprozessen unterschieden. |
| processing.additive | Zusatzstoff im Verarbeitungs- oder Lagerprozess |
| prcessing.timePeriod | Mindestens Startzeitpunkt der Verarbeitungs-/Lagerprozesse |
| container.type | Art des Probenbehältnisses in SNOMED CT |
| container.capacity | Kapazität der Probencontainers |
| container.specimenQuantity | Menge der Probe im Container |
| container.additive  | Zusatzstoff im Probenbehältnis |
| note | Freitextanmerkungen zur Probe |


<br>

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| extension.diagnose | Biobank.Bioprobe.Diagnose |
| extension.gehoertZu | Biobank.Bioprobe.gehoert zu |
| identifier | Biobank.Bioprobe.Proben-ID |
| status | Biobank.Bioprobe.Verfügbarkeitsstatus |
| type | Biobank.Bioprobe.Probenart |
| parent | Biobank.Bioprobe.Ist gewonnen aus |
| request | Biobank.Bioprobe.Probenentnahme.Entnahme-ID |
| collection.extension.einstellungBlutversorgung | Biobank.Bioprobe.Probenentnahme.Einstellung Blutversorgung |
| collection.collected[x] | Biobank.Bioprobe.Probenentnahme.Entnahmezeitpunkt |
| collection.bodySite | Biobank.Bioprobe.Probenentnahme.Entnahmestelle |
| collection.fastingStatusCodeableConcept | Biobank.Bioprobe.Probenentnahme.Nuechternstatus  / Biobank.Bioprobe.Probenentnahme.Nuechternstatus Dauer |
| processing | Biobank.Bioprobe.Verarbeitungsprozess |
| processing.extension.temperaturbedingungen | Biobank.Bioprobe.Verarbeitungsprozess.Temperatur |
| processing.procedure | Biobank.Bioprobe.Verarbeitungsprozess.Verarbeitungstyp / Biobank.Bioprobe.Verarbeitungsprozess.Modus |
| processing.additive | Biobank.Bioprobe.Verarbeitungsprozess.Verwendung Additive |
| prcessing.timePeriod.start | Biobank.Bioprobe.Verarbeitungsprozess.Startzeitpunkt / Bioprobe.Lagerprozess.Einfrierzeitpunkt |
| prcessing.timePeriod.end | Biobank.Bioprobe.Verarbeitungsprozess.Endzeitpunkt Biobank.Bioprobe.Lagerprozess.Auftauzeitpunkt |
| container.type | Biobank.Bioprobe.Primaercontainer.Containertyp |
| container.capacity | Biobank.Bioprobe.Primaercontainer.Kapazitaet |
| container.specimenQuantity | Biobank.Bioprobe.Probenmenge |
| container.additive  | Biobank.Bioprobe.Primaercontainer.Verwendung Additiv |
| note | Biobank.Bioprobe.Projektverwendung / Biobank.Bioprobe.Sonstige Eigenschaften |

Folgende Invarianten müssen bei der Implementierung des Profils beachtet werden:

**Constraints**: @``` from StructureDefinition where url in ('https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore'|'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen') for differential.element.constraint select key,severity,human, expression```

---

**Differential**

Zur besseren Harmonisierung der Probenmodellierung zwischen den Modulen basieren die Specimen-Profile der einzelnen Module auf einem gemeinsamen Basisprofil für Specimen, von dem die einzelenen Module eigene Profile ableiten. Das Differential zeigt deshalb nur die Unterschiede zum Basisprofil an. Implementiert werden sollte immer das jeweilige modulspezifische Profil.

{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/ZellinieOrganoid, diff}}


---

**Beispiele**

Beispiel Gewebeprobe:

{{json:medizininformatikinitiative-modulbiobank/musterprobegewebe}}

Beispiel Flüssigprobe:

{{json:medizininformatikinitiative-modulbiobank/musterprobefluessig}}
