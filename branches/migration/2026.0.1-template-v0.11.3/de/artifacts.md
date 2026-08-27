# Artefaktübersicht - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Artefaktübersicht**

## Artefaktübersicht

 Für die aktuelle Seite ist keine Übersetzung verfügbar, daher wurde sie in der Standardsprache dargestellt. 

Diese Seite bietet eine Liste der FHIR-Artefakte, die in diesem Implementierungsleitfaden definiert sind.

### Verhalten: CapabilityStatements 

Die folgenden Artefakte definieren die spezifischen Fähigkeiten, die verschiedene Systemtypen haben müssen, um diesem Implementierungsleitfaden zu entsprechen. Von Systemen, die mit dem Implementierungsleitfaden konform sind, wird erwartet, dass sie die Konformität mit einem oder mehreren der folgenden Capability Statements deklarieren.

| | |
| :--- | :--- |
| [ MII CPS Biobank CapabilityStatement  ](CapabilityStatement-mii-cps-biobank-capabilitystatement.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Biobank der Medizininformatik Initiative zu implementieren. |

### Strukturen: Logische Modelle 

Diese definieren Datenmodelle, die den von diesem Implementierungsleitfaden abgedeckten Bereich in geschäftsfreundlicheren Begriffen darstellen als die zugrunde liegenden FHIR-Ressourcen.

| | |
| :--- | :--- |
| [ MII_LM_Biobank  ](StructureDefinition-Biobank.md) | Logische Repräsentation des Erweiterungsmoduls Biobank |

### Strukturen: Ressourcenprofile 

Diese definieren Einschränkungen für FHIR-Ressourcen für Systeme, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII PR Biobank Observation DNA Konzentration  ](StructureDefinition-mii-pr-biobank-observation-dna-konzentration.md) | Die DNA-Konzentration einer Probe |
| [ MII PR Biobank Observation Karyotyp  ](StructureDefinition-mii-pr-biobank-observation-karyotyp.md) | Der an einer Zelline oder einem Organiod festgestellte Karyotyo |
| [ MII PR Biobank Observation Morphologie  ](StructureDefinition-mii-pr-biobank-observation-morphologie.md) | Morphologie einer Zelline oder eines Organiods |
| [ MII PR Biobank Observation Proliferation  ](StructureDefinition-mii-pr-biobank-observation-proliferation.md) | Proliferation einer Zelline oder eines Organiods |
| [ MII PR Biobank Observation Qualitätsprüfung  ](StructureDefinition-mii-pr-biobank-observation-qualitaetspruefung.md) | Art und Ergebnis einer an einer Probe, einer Zelline oder einem Organiod durchgeführten Qualitätsprüfung |
| [ MII PR Biobank Observation Wachstumstyp  ](StructureDefinition-mii-pr-biobank-observation-wachstumstyp.md) | Wachstumstyp einer Zelline oder eines Organiods |
| [ MII PR Biobank Organization Sammlung Biobank  ](StructureDefinition-mii-pr-biobank-organization.md) | Darstellung der organisatorischen Daten einer Probensammlung oder Biobank. |
| [ MII PR Biobank Specimen Bioprobe  ](StructureDefinition-mii-pr-biobank-specimen.md) | Abbildung einer MII Bioprobe |
| [ MII PR Biobank Specimen Bioprobe Core  ](StructureDefinition-mii-pr-biobank-specimen-core.md) | Basisiprofil zur Abbildung einer MII Bioprobe. Nicht zur direkten Implementierung gedacht, Module leiten bei Bedarf eigene Profile von diesem Profil ab. |
| [ MII PR Biobank Specimen Zellinie Organoid  ](StructureDefinition-mii-pr-biobank-zellinie-organoid.md) | Abbildung einer MII Zellinie oder Organiods |
| [ MII PR Biobank Substance Additiv  ](StructureDefinition-mii-pr-biobank-substance-additiv.md) | Abbildung eines Additives, das zu einer Probe hinzugefügt werden kann |

### Strukturen: Extension-Definitionen 

Diese definieren Einschränkungen für FHIR-Datentypen für Systeme, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII EX Biobank Anzahl Aliquots  ](StructureDefinition-mii-ex-biobank-anzahl-aliquots.md) | Die Extension ermöglicht es, die Anzahl der vorhandenen Aliquots zu einer Aliquot-Gruppe anzugeben. |
| [ MII EX Biobank Anzahl Passagen  ](StructureDefinition-mii-ex-biobank-anzahl-passagen.md) | Zahl der Passagen, die die Zellinie oder das Organiod durchlaufen hat. |
| [ MII EX Biobank Diagnose  ](StructureDefinition-mii-ex-biobank-diagnose.md) | Mittels dieser Extension kann ausgedrückt werden, dass Material mit der referenzierten Diagnose in der Probe enthalten ist. |
| [ MII EX Biobank Ebene  ](StructureDefinition-mii-ex-biobank-ebene.md) | Mittels dieser Extension kann ausgedrückt werden, welcher Probenebene dieses Specimen zuzuordnen ist. |
| [ MII EX Biobank Einstellung Blutversorgung  ](StructureDefinition-mii-ex-biobank-einstellung-blutversorgung.md) | Zeitpunkt der Einstellung der Bluversorgung während der Entnahme. Wird z.B. für die Berechnung der kalten bzw. warem Ischämiezeiten benötigt. |
| [ MII EX Biobank Feature R5  ](StructureDefinition-mii-ex-biobank-feature-r5.md) | Die Extension ermöglicht es im Specimen das feature aus R5 zu nutzen. |
| [ MII EX Biobank Kulturprotokoll  ](StructureDefinition-mii-ex-biobank-kulturprotokoll.md) | Protokoll der Kultur der Zellinie oder des Organiods. |
| [ MII EX Biobank Rolle des Kontaktes  ](StructureDefinition-mii-ex-biobank-kontaktrolle.md) | Mittels dieser Extension soll die Rolle der Kontaktperson in der probenverwaltenden Organisation angegeben werden, z.B. Principal Investigator, Direktor usw. |
| [ MII EX Biobank Temperaturbedingungen  ](StructureDefinition-mii-ex-biobank-temperaturbedingungen.md) | Um zu einer Verabeitung oder Lagerung die jeweils herrschenden Temperaturbedingungen (in °C) anzugeben soll diese Extension verwendet werden. Dabei soll nach Möglichkeit immer ein Wertebereich inkl. oberer und unterer Grenze angegeben werden. |
| [ MII EX Biobank Verwaltende Organisation  ](StructureDefinition-mii-ex-biobank-verwaltende-organisation.md) | Die Organisation, die die Probe verwaltet, soll mithilfe dieser Extension referenziert werden. Anfragen zu den Proben sollen mittels dieser Verlinkung und der in der Organization hinterlegten Kontaktinformationen möglich sein. |
| [ MII EX Biobank Zelllinien-Modifikation  ](StructureDefinition-mii-ex-biobank-modifikationen.md) | Erweiterung zur Beschreibung von Modifikationen an Zelllinien, einschließlich Art der Modifikation, Zielgen und Referenz zum Protokoll. |

### Terminologie: ValueSets 

Diese definieren Wertemengen, die von Systemen verwendet werden, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII VS Biobank BodyStructures SCT  ](ValueSet-mii-vs-biobank-body-structures-sct.md) | Value Set for Specimen Collection Body Structures (SNOMED CT) |
| [ MII VS Biobank Cellinie Morphology SCT  ](ValueSet-mii-vs-biobank-cellline-morphology-sct.md) | Value Set for Morphological Characteristics of Cell Lines |
| [ MII VS Biobank Cellline Modification CLO  ](ValueSet-mii-vs-biobank-cellline-modification-clo.md) | Value Set for Types of Cell Line Modifications (CLO) |
| [ MII VS Biobank Containertyp SCT  ](ValueSet-mii-vs-biobank-containertyp-sct.md) | Value Set for Container Types (SNOMED CT) |
| [ MII VS Biobank DNA Concentration Units UCUM  ](ValueSet-mii-vs-biobank-dna-concentration-units-ucum.md) | Value Set for DNA Concentration Units (UCUM) |
| [ MII VS Biobank Karyotyp SCT  ](ValueSet-mii-vs-biobank-karyotyp-sct.md) | Value Set for Karyotypes (SNOMED CT) |
| [ MII VS Biobank Laboratory Procedure SCT  ](ValueSet-mii-vs-biobank-laboratory-procedure-sct.md) | Value Set for Specimen Processing Laboratory Procedures (SNOMED CT) |
| [ MII VS Biobank Probenart SCT  ](ValueSet-mii-vs-biobank-probenart-sct.md) | Value Set for Sample Types (SNOMED CT) |
| [ MII VS Biobank Probenebene  ](ValueSet-mii-vs-biobank-probenebene.md) | Value Set for specimen hierarchy levels in Biobanking |
| [ MII VS Biobank Proliferation Zellinie  ](ValueSet-mii-vs-biobank-cellline-proliferation.md) | Value Set for Proliferation Status of Cell Lines/Organoids |
| [ MII VS Biobank Substance Additive  ](ValueSet-mii-vs-biobank-substance-additive-sct.md) | Value Set for Substance Additives (SNOMED CT) |
| [ MII VS Biobank Wachstumpstyp CLO  ](ValueSet-mii-vs-biobank-wachstumstyp-clo.md) | Value Set for Cell Culture Growth Types (CLO) |

### Terminologie: CodeSysteme 

Diese definieren neue CodeSysteme, die von Systemen verwendet werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII CS Biobank Contact Type  ](CodeSystem-mii-cs-biobank-contact-type.md) | Contact Type für Organization.contact |
| [ MII CS Biobank Probenebene  ](CodeSystem-mii-cs-biobank-probenebene.md) | Codes um die Probenebene anzugeben |

### Terminologie: ConceptMaps 

Diese definieren Transformationen zur Konvertierung zwischen Codes durch Systeme, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII CM Biobank Fixation Type SPREC 4.0 SCT  ](ConceptMap-mii-cm-biobank-fixation-type-sprec-sct.md) | Mapping der SPREC 4.0 Fixation Types auf die im Modul verwendeten SNOMED CT Codes für Zusatzstoffe. |
| [ MII CM Biobank Long-Term Storage SPREC 4.0 SCT  ](ConceptMap-mii-cm-biobank-long-term-storage-sprec-sct.md) | Mapping der SPREC 4.0 Long-Term Storage Containertypen auf die im Modul verwendeten SNOMED CT Codes. |
| [ MII CM Biobank Primary Container SPREC 4.0 SCT  ](ConceptMap-mii-cm-biobank-primary-container-sprec-sct.md) | Mapping der SPREC 4.0 Primary-Container-Containertypen auf die im Modul verwendeten SNOMED CT Codes. |
| [ MII CM Biobank Sample Type SPREC 4.0 SCT  ](ConceptMap-mii-cm-biobank-sample-type-sprec-sct.md) | Mapping der SPREC 4.0 Sample Types auf die im Modul verwendeten SNOMED CT Codes. |

### Beispiel: Beispielinstanzen 

Dies sind Beispielinstanzen, die zeigen, wie Daten aussehen könnten, die von Systemen produziert und konsumiert werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ Biobank Musterstadt  ](Organization-BiobankMusterstadt.md) |  |
| [ Buffy-Coat Aliquotgruppe  ](Specimen-AliquotgruppeBuffyCoat.md) |  |
| [ Buffy-Coat Einzelaliquot 50 µl  ](Specimen-AliquotBuffyCoat1.md) |  |
| [ Buffy-Coat Einzelaliquot 50 µl  ](Specimen-AliquotBuffyCoat2.md) |  |
| [ CRISPR TP53 Knockout Protokoll  ](DocumentReference-ProtocolCRISPRTP53.md) | CRISPR Knockout-Protokoll für TP53 in Lungentumor-Organoiden |
| [ DNA Aliquotgruppe  ](Specimen-AliquotgruppeDNA.md) |  |
| [ DNA Konzentration Aliquot  ](Observation-DNAConcentrationObs1.md) |  |
| [ Heparin  ](Substance-Heparin.md) |  |
| [ Karyotyp Organoid Lungenbiopsie  ](Observation-KaryotypOrganoidLunge.md) |  |
| [ Lungen-Organoid Kulturprotokoll  ](DocumentReference-Kulturprotokoll.md) | Standardprotokoll zur Kultivierung von Lungentumor-Organoiden |
| [ Morphologie Organoid Lungenbiopsie  ](Observation-MorphologieOrganoidLunge.md) |  |
| [ Musterprobe Gewebe  ](Specimen-MusterprobeGewebe.md) |  |
| [ Musterprobe flüssig  ](Specimen-MusterprobeFluessig.md) |  |
| [ Mustersammlung  ](Organization-Mustersammlung.md) |  |
| [ Needle Biopsy Lung - Biobank  ](ServiceRequest-GewebeBiopsie.md) |  |
| [ Organoid Lungenbiopsie  ](Specimen-OrganoidLunge.md) |  |
| [ Plasma Aliquotgruppe  ](Specimen-AliquotgruppePlasma.md) |  |
| [ Proliferation Organoid Lungenbiopsie  ](Observation-ProliferationOrganoidLunge.md) |  |
| [ Qualitätsprüfung Buffy-Coat Aliquotgruppe  ](Observation-QualitaetspruefungBuffyCoat.md) |  |
| [ Qualitätsprüfung Plasma Aliquotgruppe  ](Observation-QualitaetspruefungPlasma.md) |  |
| [ Wachstumstyp Organoid Lungenbiopsie  ](Observation-WachstumstypOrganoidLunge.md) |  |

### Sonstige 

Dies sind Ressourcen, die in diesem Implementierungsleitfaden verwendet werden, die in keine der anderen Kategorien passen.

| |
| :--- |
| [ mii-param-biobank-manifest  ](Parameters-mii-param-biobank-manifest.md) |

