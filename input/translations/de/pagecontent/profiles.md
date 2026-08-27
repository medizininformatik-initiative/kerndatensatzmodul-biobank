<!-- markdownlint-disable MD041 -->

Die Arbeiten der Kerndatensatzspezifikationen basieren, wo möglich, auf internationalen Standards und Terminologien. Insbesondere sei hier die [International Patient Summary](http://hl7.org/fhir/uv/ips/history.html) hervorgehoben. Eine Anpassung an die allgemeinen Gegebenheiten des deutschen Gesundheitswesens erfolgt durch die Verwendung der [Deutschen Basisprofile](https://simplifier.net/basisprofil-de-r4) von HL7 Deutschland.

Alle Elemente des Kerndatensatzes, angepasst an die Details und Anforderungen für die Use Cases der Medizininformatik-Initiative, werden in Form von FHIR StructureDefinitions beschrieben. Die fachliche Erläuterung der Anpassungen findet sich jeweils als Einleitung direkt auf der Profilseite; die vollständige, automatisch generierte Liste aller Profile dieses Moduls findet sich in der [Artefakt-Übersicht](artifacts.html).

> Für verpflichtende oder als must-support markierte Elemente sei an dieser Stelle auf die entsprechenden [Regeln der IPS](https://build.fhir.org/ig/HL7/fhir-ips/Must-Support-and-Obligations.html) verwiesen, die auch für diesen ImplementationGuide gelten.
{: .ig-highlight .ig-highlight-grey}

### Specimen (Bioprobe)

Mittels eines Specimen wird eine Bioprobe abgebildet: [MII PR Biobank Specimen](StructureDefinition-mii-pr-biobank-specimen.html) (aufbauend auf [MII PR Biobank Specimen Core](StructureDefinition-mii-pr-biobank-specimen-core.html)).

Hinweis: In vielen Kontexten haben die Begriffe Specimen und Sample differenzierte Bedeutungen. Sowohl FHIR als auch SNOMED CT sprechen i.d.R. von Specimen und kennen diese Differenzierung nicht; sie spielt daher im Rahmen der Vorgaben des Moduls keine Rolle.

Die bei der Implementierung zu beachtenden Invarianten (Constraints) sind auf den Profilseiten unter „Constraints" dargestellt. Das Mapping der Datensatz-Elemente auf FHIR findet sich auf der Seite [Logical Models](logical-models.html).

Beispiele:

* Gewebeprobe: [MusterprobeGewebe](Specimen-MusterprobeGewebe.html)
* Flüssigprobe: [MusterprobeFluessig](Specimen-MusterprobeFluessig.html)
* Aliquotgruppe: [AliquotgruppeBuffyCoat](Specimen-AliquotgruppeBuffyCoat.html)
* Aliquot: [AliquotBuffyCoat2](Specimen-AliquotBuffyCoat2.html)
* Verarbeitete neue Aliquotgruppe: [AliquotgruppeDNA](Specimen-AliquotgruppeDNA.html)

### Specimen (Zelllinie/Organoid)

Mittels der Specimen-Ressource können neben der Bioprobe auch Zelllinien und Organoide abgebildet werden: [MII PR Biobank Zelllinie/Organoid](StructureDefinition-mii-pr-biobank-zellinie-organoid.html). Vom Modell her handelt es sich dabei um eine Erweiterung des Bioproben-Profils um spezifische Felder mittels Extensions sowie das Specimen referenzierende Observations. Welche Extensions und/oder Observations dabei passend sind, hängt vom jeweiligen Anwendungsfall ab.

Beispiel Organoid: [OrganoidLunge](Specimen-OrganoidLunge.html)

Zugehörige Observation-Profile: [Karyotyp](StructureDefinition-mii-pr-biobank-observation-karyotyp.html), [Morphologie](StructureDefinition-mii-pr-biobank-observation-morphologie.html), [Proliferation](StructureDefinition-mii-pr-biobank-observation-proliferation.html), [Wachstumstyp](StructureDefinition-mii-pr-biobank-observation-wachstumstyp.html), [Qualitätsprüfung](StructureDefinition-mii-pr-biobank-observation-qualitaetspruefung.html), [DNA-Konzentration](StructureDefinition-mii-pr-biobank-observation-dna-konzentration.html)

#### Mutationen

Bei der Abbildung von in einer Zelllinie/einem Organoid festgestellten Mutationen wurde auf die Erstellung eines eigenen Profils verzichtet. Stattdessen sollen die entsprechenden Profile aus dem [Modul Molekulargenetischer Befundbericht](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Molekulargenetischer_Befundbericht_V2025/implementation-guides-ImplementationGuide-2025.x-DE-MIIIGModulMolGenDE-IGMIIKDSModulMolekulargenetischerBefundbericht.html) genutzt werden. Dort finden sich weitere wichtige Hinweise zur Umsetzung. Im *focus*-Feld der Observations MUSS jeweils auf die Specimen-Ressource verlinkt werden, die die Zelllinie / das Organoid repräsentiert.

* Variante: `https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante`
* Genotyp: `https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genotyp`
* Haplotyp: `http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/haplotype`

#### Kulturbedingungen

Da der Begriff Kulturbedingungen sehr viele unterschiedliche Aspekte umfasst, wurde beschlossen, kein spezielles Profil zu erstellen. Allerdings wird von Seiten des KDS-Teams empfohlen, solche Informationen als *Observation* zu modellieren, wobei die zur Zelllinie / zum Organoid gehörende *Specimen*-Ressource im *focus*-Attribut referenziert werden soll. Mithilfe der *code*- und *value*-Angaben kann dann die gewünschte Information z.B. über SNOMED CT oder CLO angegeben werden. Das KDS-Team freut sich über Rückmeldungen und Umsetzungen an den Standorten, um hierzu in Zukunft detailliertere Vorschläge machen zu können.

#### Phenotyp

Für eine Zelllinie oder ein Organoid kann eine Diagnose / ein Phenotyp mit der Extension [Diagnose](StructureDefinition-mii-ex-biobank-diagnose.html) erfasst werden, wie bei einer „normalen" Probe auch. Soll ein TNM erfasst werden, soll das [Profil aus dem Onkologie-Modul](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie_V2025/MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Klassifikation-Observation.html) zur Anwendung kommen, wobei bei subject eine [data-absent-reason-Extension](https://hl7.org/fhir/R4/extension-data-absent-reason.html) eingesetzt werden kann, wenn jeglicher Patientenbezug fehlt.

<!-- DERIVED:bridge source=MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Index.page.md gate=B -->
> Die folgende Linkliste ist bei der Migration neu entstanden (Brückentext zu den Profilseiten).
{: .ig-highlight .ig-highlight-grey}

### Weitere Profile

* [Organization (Sammlung/Biobank)](StructureDefinition-mii-pr-biobank-organization.html) – Abbildung von Sammlung und Biobank; fachliche Erläuterung auf der Profilseite
* [Substance (Additiv)](StructureDefinition-mii-pr-biobank-substance-additiv.html) – Abbildung von Additiven
