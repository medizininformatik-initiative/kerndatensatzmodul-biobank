<!-- markdownlint-disable MD041 -->

### Anleitung für Forschende

Das Modul **Biobank** bildet die für die biomedizinische Forschung relevanten Informationen zu Bioproben ab: ihre Art und Herkunft, ihre präanalytische Verarbeitung, ihre Lagerung sowie die verwaltende Organisationseinheit. Es unterstützt damit zwei zentrale Anwendungsfälle für Forschende: die **Machbarkeitsprüfung** ("Gibt es passende Proben für mein Vorhaben, und wie viele?") und die **Bewertung der Probenqualität** für die geplante Analyse.

#### Wichtige Datenelemente

Je nach Fragestellung könnten insbesondere folgende Angaben aus dem Modul von Interesse sein:

- **Probentyp und -material** (`Specimen.type`) – z. B. Vollblut, Serum, Plasma, Gewebe (FFPE), DNA/RNA, Urin. Die Kodierung erfolgt standardisiert mit SNOMED CT, sodass Probentypen standortübergreifend vergleichbar und maschinell durchsuchbar sind.
- **Entnahmeort** (`Specimen.bodySite`) – kodiert mit SNOMED CT oder, insbesondere bei onkologischen Fragestellungen, mit ICD-O-3.
- **Probenhierarchie**: Das Modul unterscheidet zwischen **Primärprobe**, **Aliquotgruppe** und **Aliquot**. Für die Machbarkeitsanfrage ist meist die Aliquotgruppe-Ebene relevant, da sie Rückschlüsse auf tatsächlich verfügbare Mengen erlaubt.
- **Menge/Volumen** des Aliquots.
- **Präanalytische Verarbeitung** (`Specimen.processing`), (z. B. Zentrifugation, Verarbeitungsart, Einfrieren). Diese Angaben können hilfreich sein, um einzuschätzen, ob eine Probe für ein bestimmtes Analyseverfahren (z. B. Multiomics, Proteomics) geeignet ist.
- **Festgestellte Diagnose**: Die Probe kann mit einer Diagnose verknüpft werden, die anhand dieser Probe gestellt wurde – z. B. bei Tumorerkrankungen die histopathologische Diagnose, die erst durch die Untersuchung des Gewebes gewonnen wird.
- **Lagerbedingungen und Lagerhistorie** (`Specimen.container`, Lagerprozesse mit Temperatur, Beginn/Ende) – kann bei der Einschätzung der Probenqualität bei langer Lagerdauer oder mehrfachem Auftau-/Einfrierzyklus helfen.
- **Infektiositäts-/Biosicherheitsstatus** – relevant für die Planung des Transports und der Handhabung im Zielort.

#### Was das Modul bewusst nicht abbildet

Klinische Daten zur Probe (z. B. Diagnose, Vorbehandlung, Laborwerte des Spenders/der Spenderin) gehören **nicht** zum Modul Biobank, sondern werden über die entsprechenden Fachmodule bereitgestellt (u. a. Diagnose, Prozedur, Labor, Onko, Patho, MolGen) und über den Patient- bzw. Fall-Bezug mit der Probe verknüpft. Für eine vollständige Machbarkeitsanfrage – z. B. "Serumproben von Patient:innen mit Diagnose X, entnommen vor Therapiebeginn" – müssen Daten aus dem Biobank-Modul also mit denen der klinischen Module kombiniert werden.

#### Technische Umsetzung der Machbarkeitsanfragen

Für standortübergreifende Machbarkeitsanfragen zu Bioproben und assoziierten Daten dient das [**Forschungsdatenportal für Gesundheit (FDPG)**](https://forschen-fuer-gesundheit.de/) als zentrale, im Rahmen der Medizininformatik-Initiative entwickelte Anlaufstelle. Das Modul Biobank liefert die technische Grundlage, damit diese Angaben aus den lokalen Systemen konsistent und semantisch interoperabel bereitgestellt werden können.

#### Weiterführende Informationen

- Struktur der Ressourcen: siehe [UML-Diagramme](uml-diagrams.html)
- Begriffsklärungen (z. B. SPREC, Aliquot): siehe [Glossar](glossary.html)
- Technische Details zu Profilen und Extensions: siehe [Anleitung für Implementierende](implementer-guidance.html)