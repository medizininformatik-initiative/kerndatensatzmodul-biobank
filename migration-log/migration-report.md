# Migration report — MII KDS Modul Biobank → MII KDS module template

**Module:** MII KDS Modul Biobank / Bioprobendaten (`de.medizininformatikinitiative.kerndatensatz.biobank` 2026.0.1) · **Report author:** Claude (agent) + skill `mii-ig-migration` (catalog v0.23.0) · **Report date:** 2026-08-27
**Written for:** Modulteam Biobank / TF-KDS-Reviewer (kompetente:r IG-Autor:in ohne Vorwissen über Skill, Spezifikation oder dieses Repo) · **Decision requested by:** 2026-09-10
**Decision requested:** approve with the listed conditions (Gates A–C abarbeiten; Gate D separat)
**State:** complete through build and mechanical verification
**Published?** No package was released to the FHIR package registry. The rendered preview is not yet public; nach dem Push rendert CI den Branch unter `https://medizininformatik-initiative.github.io/kerndatensatzmodul-biobank/branches/migration/2026.0.1-template-v0.11.3/`.
**Recommendation:** Mergen nach Abarbeitung von Gate A (Identitätsfelder, DEC-1…8) und Gate B/C (REV-1…4); technisch blockiert nichts — alle 73 QA-Fehler sind belegte Quell-Content-Befunde, 0 migrationsverursacht.

## How to use this report

1. Read **Summary** and **Applied fixes** first (five minutes): that is everything that already changed.
2. Working a sign-off? Go straight to the **QA checklist** under *Sign-off*: one checkbox per open obligation, grouped by gate.
3. Then work **① Decisions**, **② Reviews**, **③ QA triage** in that order. Every item names its owner.
4. Comparing source and target by hand? `migration-log/comparison-table.md` links every rendered source page to its rendered target page side by side.
5. **Gate 0**, **Identity**, **Verification** and **Protocol** are evidence — open them to check an item or look a term up.
6. Item ids are typeable and greppable (`DEC-1`, `REV-2`, `QA-5`, `FIX-1`) — quote the id when you answer.
7. Nothing is published and every applied change is revertible; but doing nothing is not neutral, so read each item's **If nobody acts**.

## Summary — read this first (for everyone)

Das MII-KDS-Modul Biobank (Bioprobendaten: Specimen, Sammlungen/Biobanken, Zelllinien/Organoide; 63 FHIR-Artefakte) wurde von seinem Simplifier-basierten Aufbau auf das MII-KDS-Modul-Template migriert. Alle Artefakte und Canonical-URLs sind unverändert; die deutsche Narrative wurde vollständig übertragen und um englische Maschinenübersetzungen (Review-pflichtig) ergänzt.

- **Source:** `medizininformatik-initiative/kerndatensatzmodul-biobank` @ `ec18029` (tag `v2026.0.1`), shape A — the source is already a SUSHI project with FSH in its tree; narrative taken from the repository's own `implementation-guides/mii-ig-biobanken-de-v2026` (30 pages). **Besonderheit:** Auf Simplifier existiert KEINE publizierte Guide-Version (nur Previews) — der in-Repo-Baum ist die authoritative Quelle (DEC-6).
- **Target template:** `forschungsgruppe-digital-health/mii-kds-module-template` **v0.11.3** (commit `fe972ca`), vendored unter `ig-template/`.
- **Build:** SUSHI (der Compiler, der FSH in FHIR-Ressourcen übersetzt) reports **0 errors / 16 warnings** — die 16 Warnungen sind zeichenidentisch mit der unmigrierten Quelle (Baseline-Beweis `migration-log/sushi-source-baseline.log`). The IG Publisher's separate QA report lists **73 errors / 391 warnings / 0 broken links**. Two tools, two counts — QA errors do not fail the build.
- **QA acceptance bar:** no worse than the unmigrated source. Die Quelle hatte NIE einen Publisher-Build (Simplifier-only; `qa_baseline: null` im Preflight); alle 73 Fehler liegen in sechs belegten Quell-Kategorien (③), **0 migrationsverursachte Fehler** (der eine — ein Anker-Link — wurde gefixt, FIX-3, danach 0 Broken Links).
- **Verification:** **108 IDENTISCH · 31 DIVERGIERT · 40 NICHT PRÜFBAR** — die Prüfung lief und stimmte · lief und fand einen benannten Unterschied · konnte **nicht** mechanisiert laufen. Das Dritte ist **kein** Pass. Every row, with its next action: `migration-log/verification.md`.
- **Open for humans:** 8 decisions (①), 4 reviews (②), 7 QA-Posten (③); **Gate A und Gate B blockieren die Publikation** (Gate D ohnehin).
- **Not checked by this migration:** fachliche Korrektheit der Prosa, Terminologie-Inhalte (SNOMED-Spanish-Extension-Codes, CLO/PATO), Erreichbarkeit externer Links im Quelltext. Unchanged from the source, and out of scope here.

## Where the evidence lives

| File | What it is |
|---|---|
| `migration-log/run.log` | append-only Protokoll jedes Schritts: Kommando, Messwerte, echter Exit-Status |
| `migration-log/verification.md` / `verification-findings.tsv` | Verifikationsbefunde je Check (menschen-/maschinenlesbar), inkl. Next action je Divergenz |
| `migration-log/page-map.tsv` | Page-Map-v2-Vertrag (`source_page → target` oder `RETIRED` mit Grund), generiert + human-reviewt |
| `migration-log/page-structure-advice.md` | menschenlesbares Rendering der generierten Map |
| `migration-log/preflight-analysis.json` / `postflight-analysis.json` | dieselbe ig-stats-Messung vor bzw. nach der Migration |
| `migration-log/postflight/compare-report.md` | Same-Module-Verifikation Quelle↔Migrat: Artefakt-Satz IDENTISCH (63), Canonical-URLs identisch (42) |
| `migration-log/prepost-delta.md` / `.tsv` | pre→post-Verdikte je Eigenschaft (unchanged · improved · REGRESSION · expected-change) |
| `migration-log/derived-content.tsv` | jede Passage, die die Migration GESCHRIEBEN statt übertragen hat (DERIVED-Marker) |
| `migration-log/qa-checklist.md` | generierte Sign-off-Checkliste (qa-checklist.py) |
| `migration-log/comparison-table.md` | die Map als klickbare Quelle↔Ziel-Tabelle (comparison-table.py) |
| `migration-log/identity-claims.tsv` | Identitäts-Ledger: je Feld, Quelle, Tier, Widerspruchsflag |
| `migration-log/sushi-source-baseline.log` | SUSHI-Lauf auf der UNMIGRIERTEN Quelle: 0 Errors / 16 Warnings |
| `output/qa.txt` / `output/qa.html` | Publisher-QA des Migrats |

## How to re-run any of this

```bash
SKILL_DIR=.claude/skills/mii-ig-migration; ML="$SKILL_DIR/scripts/migration-log.sh"
npx --yes fsh-sushi@3.20.1 .                    # Pin aus .github/workflows/ig-publisher.yml env:
java -jar publisher.jar -ig ig.ini              # IG Publisher 2.3.2, sha256 07c57602… (gleiche env:)
python3 "$SKILL_DIR/scripts/verify-migration.py" --target . --source <unmigrated-source> --rendered output --source-lang de --template-latest v0.11.3
python3 "$SKILL_DIR/scripts/prepost-delta.py" --pre migration-log/preflight-analysis.json --post migration-log/postflight-analysis.json --out migration-log/prepost-delta.md --tsv migration-log/prepost-delta.tsv
python3 "$SKILL_DIR/scripts/qa-checklist.py" --log-dir migration-log --out migration-log/qa-checklist.md
python3 "$SKILL_DIR/scripts/comparison-table.py" --log-dir migration-log --map migration-log/page-map.tsv --out migration-log/comparison-table.md
python3 .claude/skills/fhir-ig-analysis/scripts/ig-stats.py run <source> . -o migration-log/postflight --label biobank-source,biobank-migrated
```

## Codes, gates and words used in this report

- **Gate A** = Identitäts-/Artefakt-Review (Modulverantwortliche + TF KDS) · **Gate B** = Narrative-Review (fachliche + technische Autor:innen) · **Gate C** = Sprach-/Übersetzungs-Review · **Gate D** = Release per KDS-Governance (TF KDS / AG IOP / NSG) — organisatorisch; nichts publiziert vor D.
- **IDENTISCH / DIVERGIERT / NICHT PRÜFBAR** = Prüfung lief und stimmte / lief und fand einen benannten Unterschied / konnte nicht mechanisiert laufen. NICHT PRÜFBAR ist **kein** Pass.
- **M9** = messbare Optional-Seiten-Entscheidung (Artefaktzahl 0 → Seite entfernen, Artefakte nie löschen) · **M11** = Security-und-Privacy-Entscheidung · **C4** = jeder Text-Lauf der Quelle ist irgendwo im Ziel · **C7** = geschriebene Passagen tragen DERIVED-Marker · **F1/F2** = Identität/Dependency-Pins gegen Quelle · **L2–L4** = Vollständigkeit des Run-Logs (zweites Orakel) · **P2–P5** = Template-/Toolchain-Provenienz · **R1–R5** = Rendering-Integrität und Sprachparität. Vollständige Liste: `references/codes.md` im Skill.
- **Shape A** = die Quelle ist bereits ein SUSHI-Projekt (FSH vorhanden) — hier der Fall; goFSH war nicht nötig.

## Applied fixes (already changed — a human confirms or reverts)

- **FIX-1** — LM-Elementpfad `Phänotyp-Diagnose` → `Phaenotyp-Diagnose` (`input/fsh/logicals/MII_LM_Biobank.fsh`, Definition + Mapping). **Why:** IG Publisher 2.3.2 bricht bei Nicht-ASCII in `ElementDefinition.path` hart ab (gemessen; Simplifier tolerierte es); alle Geschwisterpfade waren bereits ASCII-normalisiert (`Kapazitaet`, `Nuechternstatus`, `Verfuegbarkeitsstatus`) → Versehen in der Quelle. **Revert:** eigener Einzel-Commit (`git log --oneline` → `fix(migration): LM-Elementpfad …`). **If nobody acts:** bleibt; falls jemand den LM-Pfad mit Umlaut konsumiert, bricht dessen Referenz. **Owner:** Gate A. **Effort:** 2 min.
- **FIX-2** — LM-Elementname `Qualitätsprüfung` → `Qualitaetspruefung`; danach systematischer Scan: keine Nicht-ASCII-Elementnamen mehr. Gleiche Begründung, eigener revertierbarer Einzel-Commit. **Owner:** Gate A. **Effort:** 1 min.
- **FIX-3** — Broken-Link-Fix: Anker `artifacts.html#example-example-instances` → `artifacts.html` (examples.md, beide Sprachen). Einziger migrationsverursachter QA-Fehler; nach Rebuild 0 Broken Links (Beweis: `migration-log/ig-publisher.log`). **Owner:** none (done). **Reversibility:** trivial.

## ① Decision queue (Gate A — someone must choose)

- **DEC-1 — `license: CC-BY-4.0`.** Die Quelle deklariert nirgends eine Paket-Lizenz (kein sushi-config-/package.json-Feld, keine LICENSE-Datei — Preflight `licence.declared_anywhere: false`). Evidenz FÜR CC-BY-4.0: die Artefakt-Level-spdx-Extension in `input/fsh/rulesets/license-terms.fsh` (RuleSet `LicenseCodeableCCBY40`, auf den Conformance-Ressourcen eingefügt). Das Template-Literal ist zufällig identisch — bestätigt werden muss trotzdem. **Choose:** CC-BY-4.0 bestätigen oder anderes SPDX; zusätzlich: LICENSE-Datei ins Repo? **If nobody acts:** Paket shipped CC-BY-4.0 auf Artefakt-Evidenz ohne expliziten Beschluss. **Owner:** Modulverantwortliche + TF KDS. **Effort:** 10 min. **Reversibility:** eine Zeile sushi-config.
- **DEC-2 — `title`/`name`.** Ledger-Kandidaten: „KDS Biobanken" (auskommentiertes `name:` der Quelle), „FHIR Profile für KDS Biobanken" (README-H1). Gesetzt: **`title: MII IG Kerndatensatz-Modul Biobank`**, **`name: MII_IG_Biobank_DE`** (Konvention des migrierten Schwestermoduls Onkologie + MII-Namenskonvention). Hinweis: `prepost-delta` meldet `identity.name` als REGRESSION — Artefakt des Vergleichs: die Quelle hatte KEIN `name:`-Feld, der Analyser fiel auf den package.json-Namen zurück; die **packageId ist unverändert**. **Choose:** bestätigen oder ändern. **If nobody acts:** bleibt wie gesetzt. **Effort:** 5 min.
- **DEC-3 — Floating Pins aufgelöst:** `de.basisprofil.r4: 1.5.x → 1.5.4` und `de.medizininformatikinitiative.kerndatensatz.meta: 2026.0.x → 2026.0.0` (Evidenz: kerndatensatz-basis und Onkologie pinnen exakt diese; Template-CI verbietet floating Pins). Die Verifikations-Divergenzen F2/L3 benennen genau diese offenen Widersprüche. **Choose:** Pins bestätigen oder andere konkrete Versionen. **If nobody acts:** Build nutzt 1.5.4 / 2026.0.0. **Effort:** 5 min. **Reversibility:** zwei Zeilen.
- **DEC-4 — Template-Maschinerie-Dependencies (F2 „target-only"):** `hl7.fhir.uv.crmi 2.0.0` (von den CRMI-`meta.profile`-Claims der IG-Ressource verlangt), `hl7.terminology.r4 7.3.0` und `hl7.fhir.uv.extensions.r4 5.3.0` (direkter Pin verhindert stille Publisher-Injection der jeweils neuesten Version). **Choose:** bestätigen. **If nobody acts:** bleiben — Entfernen bricht Build bzw. öffnet Injection. **Effort:** 5 min.
- **DEC-5 — `id: mii-ig-biobank-de-v2026`.** Die Quelle (FSHOnly) erzeugte keine IG-Ressource, hatte also keine id; gewählt wurde der auf Simplifier entdeckte Guide-Key, analog Onkologie (`mii-ig-onko-de-v2026`). Verifikation F1 kann quellseitig nichts vergleichen — genau deshalb Gate A. **Choose:** bestätigen. **Effort:** 2 min.
- **DEC-6 — Keine publizierte Simplifier-Guide-Version.** Beide entdeckten Guide-Keys (`medizininformatikinitiative-modulbiobank-implementationguide`, `mii-ig-biobank-de-v2026`) listen ausschließlich Previews (Discovery-Lauf 2026-08-27 im run.log; `?version=current` wird grundsätzlich nicht geharvestet, weil live-editierbar). Migriert wurde aus dem in-Repo-Guide-Baum (letzte Änderung 2026-02-11). **Choose:** (a) akzeptieren, oder (b) vor Gate D einmalig eine Simplifier-Version publizieren und den Harvest-Abgleich nachziehen. **If nobody acts:** (a) gilt. **Effort:** 0 bzw. 1–2 h.
- **DEC-7 — `artifact-topic` NCI C70699 „Biospecimen"** (verifiziert gegen NCI Thesaurus 25.6.0-e am Terminologieserver) und **Autor-Kontakt** `thomas.debertshaeuser@charite.de` (vom Schwestermodul übernommen). **Choose:** bestätigen oder ersetzen. **Effort:** 2 min.
- **DEC-8 — `manualSliceOrdering: false` beibehalten.** Die Quelle kompilierte mit SUSHI-Default `false`; das Template empfiehlt `true`. Umstellen ändert Build-Semantik der Instanz-Slices → Folgearbeit, nicht Migration. **Choose:** Folge-Issue anlegen oder verwerfen. **Effort:** Issue 5 min.

## ② Review queue (Gates B/C — someone must check)

### Derived content — GENERATED, do not retype

2026-08-27T17:42:32Z  INFO   11  derived-scan  done  files=56 markers=10 gates=A:0,B:10,C:0 kinds=bridge:8,stand-in:2 langs=default,de findings=0 (none) out=./migration-log/derived-content.tsv exit=0

## Queue ② — derived content written during the migration

Text the migration WROTE, not carried. Each row renders as a highlighted box on the page named. Clearing a row means deleting the marker and its box; **whether any may remain at publication is a Gate-D decision**, recorded in the report — nothing here blocks a release by itself.

### Gate B — narrative

| Where | What was written | Derived from | Gate | Action |
|---|---|---|---|---|
| `examples.html` (default, de) | This overview was newly written during the migration; the source listed the examples per… _(bridge)_ | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/Index.page.md` | B | review the box on examples.html and delete the marker and box, or correct the text |
| `extensions.html` (default, de) | The introductory sentence and this section were newly written during the migration (bridg… _(bridge)_ | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/Extensions.page.md` | B | review the box on extensions.html and delete the marker and box, or correct the text |
| `guidance.html` (default, de) | These introductory lines and the link list were newly written during the migration (the s… _(stand-in)_ | `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/Index.page.md` | B | confirm or replace the value, then delete the marker and box |
| `profiles.html` (default, de) | The following link list was newly written during the migration (bridging text to the prof… _(bridge)_ | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Index.page.md` | B | review the box on profiles.html and delete the marker and box, or correct the text |
| `value-sets.html` (default, de) | Short bridging text, newly written during the migration; the domain terminology notes are… _(bridge)_ | `MIIIGModulBiobank/TechnischeImplementierung/Terminologien.page.md` | B | review the box on value-sets.html and delete the marker and box, or correct the text |

### Hand-written review items

- **REV-1 (Gate B) — Wortlaut-Edits: alle 15 C4-Divergenzen (+ 9 C7-Folgebefunde).** Beim Übertragen wurden offensichtliche Tippfehler korrigiert („Verabeitung"→„Verarbeitung", „Zellinie"→„Zelllinie", „Donoer"→„Donor", „Problemes"→„Problems", fehlende Kommata) und interne Linkziele auf die neuen Seiten umgeschrieben (z.B. `…-Terminologien.html` → `code-systems.html`). Der C4-Check vergleicht wörtliche Textläufe, darum meldet er jede editierte Passage als „in keinem Ziel vorhanden" — nach Durchsicht ist **kein Inhalt verloren**, aber das kann nur ein Mensch je Seite bestätigen. **How:** `migration-log/comparison-table.md` Seite für Seite; die unveränderte DE-Quelle steht in `implementation-guides/**`, das Ziel-DE unter `input/translations/de/**`. **If nobody acts:** unbestätigte Wortlaut-Abweichungen shippen. **Owner:** Modulteam (fachlich). **Effort:** 1–2 h. **Reversibility:** je Passage trivial.
- **REV-2 (Gate C) — Englische Default-Seiten sind Maschinenübersetzungen.** 20 Seiten + 8 Intro-Notes tragen den Banner `TODO:REVIEW machine translation of source page <name> (de)`. **How:** Seite lesen, Banner entfernen. **If nobody acts:** Banner rendern als Kommentar nicht, aber unreviewte Übersetzungen shippen. **Owner:** englischsprachige:r Reviewer:in. **Effort:** 2–4 h.
- **REV-3 (Gate B) — UML-Diagrammstand.** Die Seite zeigt `UML_28_05_2025.png` (das von der Quellseite referenzierte Bild); im Repo liegen neuere Stände (`images/UML_10_11_2025.png`, `UML/UML_2027.png` — letzterer kam während dieser Migration auf main dazu). TODO:REVIEW-Kommentar steht auf der Seite. **Choose:** Stand wählen, Bild austauschen. **Effort:** 10 min.
- **REV-4 (Gate B) — Intro-Note-Konvention.** Das Suchparameter-Boilerplate („Folgende Suchparameter sind … relevant") wurde aus allen Profil-Intros entfernt — identisch zur dokumentierten Gate-B-Entscheidung des Onkologiemoduls; der Inhalt liegt zentral auf `capability-statements.html`. Ebenso entfernt: die `<tabs>`/XML/JSON-Blöcke (die generierte Artefaktseite rendert dieselben Ansichten als Tabs). **Confirm.** **Effort:** 15 min.

## ③ QA triage (what the build says, and whose problem it is)

Publisher-QA (`output/qa.txt`): **73 Errors / 391 Warnings / 0 Broken Links.** Die Quelle hatte keinen Publisher-Build (Simplifier-CI mit `advisor.json`-Suppressions — Datei bleibt im Repo); Abnahme hier: **kein migrationsverursachter Fehler** — erfüllt (FIX-3 behoben und weggebaut). Kategorien, jede mit Quell-Beweis:

| Posten | # | Kategorie | Beweis „aus der Quelle" | Wessen Problem |
|---|---|---|---|---|
| QA-1 | 35 | id↔url-Mismatch-Tripel (z.B. `mii-cs-biobank-contact-type` ↔ `…/CodeSystem/ContactType`) | vom Gate-0-Preflight exakt vorhergesagt (`canonical_space.id_url_mismatch`) | Modul-Backlog; Canonicals per Guardrail 1 unveränderbar — bleibt, bis MII-weit harmonisiert |
| QA-2 | 18 | ValueSet-Terminologie: SNOMED-ECL-Filterwerte, Karyotyp-Codes nicht im tx-Snapshot, CLO ohne CodeSystem-Definition | FSH unverändert aus Quelle; tx-abhängig | SU-TermServ + Modul |
| QA-3 | 10 | Beispiel-Referenzen auf `Patient/mii-exa-test-data-patient-1` u.a. (modulübergreifende Testdaten nicht im IG) | Quell-Beispiele unverändert | Modul: `path-resource` auf mii-testdata oder Bundle-/contained-Beispiele erwägen |
| QA-4 | 7 | PATO-Codes unbekannt (pato.owl-Release 2018 am tx-Server) | Quell-Beispiele unverändert | SU-TermServ |
| QA-5 | 2 | `CodeSystem.caseSensitive` fehlt (beide CodeSysteme) | Quell-FSH; trivialer Fix, bewusst NICHT in der Migration angefasst (kein normativer Eingriff) | Modul, nächster Content-PR |
| QA-6 | 1 | R5-Cross-Version-URL (`hl7.org/fhir/5.0/…`) triggert die HL7-wg-Regel | URL-Wahl der Quelle (als `special-url` deklariert) | dokumentieren / suppressen |
| QA-7 | — | `prepost-delta` exit 1: `identity.name` (→ DEC-2, Vergleichsartefakt) und `dual_source=true` — der Quellbaum `implementation-guides/**` bleibt bis Gate D im Repo | dokumentierter Migrationszustand | nach Gate D: Retirement-PR für `implementation-guides/**` |

## Gate 0 — pre-flight scope (evidence behind the queues; not a sign-off)

- 63 Artefakte: 11 Profile, 11 Extensions, 12 ValueSets, 2 CodeSysteme, 1 Logical Model, 1 CapabilityStatement, 21 Beispiele; die scheinbare Diskrepanz „25 deklariert / 21 generiert" löst sich auf: 4 der deklarierten Instances sind die SPREC-ConceptMaps. `migration-log/preflight-analysis.json`.
- `special_url_prediction`: genau 1 (die R5-Extension-URL) → als `special-url` übernommen.
- `qa_baseline: null` → Quell-Baseline erhoben: SUSHI **0 Errors / 16 Warnings**; Warnungssatz zeichenidentisch mit dem Migrat.
- Lizenz nirgends deklariert (→ DEC-1); Narrative-Quelle: in-Repo-Guide-Baum, keine publizierte Simplifier-Version (→ DEC-6).

## Content map (where every source page went)

Der Vertrag ist **`migration-log/page-map.tsv`**: 31 Zeilen = 30 Quellseiten + 1 nachgetragene (`glossar.md`, vom Generator übersehene Nicht-`.page.md`-Datei); davon 3 **RETIRED** mit Grund (2 in der Quelle absichtlich leere Seiten — „Diese Seite wurde absichtlich leer gelassen" —, 1 Groß-/Kleinschreibungs-Dublette derselben Datei auf case-insensitivem Dateisystem). Generiert von `page-structure-advice.py`, danach reviewt und an 5 Stellen editiert (run.log `5.4c page-map-review`). Klickbare Gegenüberstellung: **`migration-log/comparison-table.md`**.
Routing-Highlights: Profilseiten → Intro-Notes über den Artefaktseiten; drei Extensions-Seiten → `extensions.md`; Terminologien → `code-systems.md`; Datensätze → `logical-models.md` inkl. **generierter** Datensatz→FHIR-Mapping-Tabelle (der Publisher rendert LM-Element-Mappings nirgends — als `GENERATED TABLE` markiert, Quelle `StructureDefinition-Biobank.json`); Manteldokument-Teile (Beschreibung, Impressum, Autoren, Copyright, Disclaimer) → `index.md`. Template-Pflichtseiten ohne Quell-Pendant tragen Template-Provenienz (`references/template-pages.tsv`). Use-Case-Lücke: keine — die Quelle liefert Szenarien (→ `guidance.md`).
M9-Entscheidungen (gemessen): `operations.md` und `search-parameters.md` entfernt (0 Artefakte); `extensions`/`value-sets`/`code-systems`/`logical-models`/`metadata`/`researcher-guidance` behalten; Template-Demoseite `rendering-artifacts.md` entfernt. M11: Template-Standard-`security-and-privacy.md` (Link-Cluster) unverändert übernommen — die Quelle hat keine Security-Narrative.

## Identity (what makes this module *this* module)

Angewandt: `id mii-ig-biobank-de-v2026` · `canonical https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank` (**Quelle gewinnt** — `ext/` bleibt, kein Template-Muster übergestülpt) · `packageId/version de.medizininformatikinitiative.kerndatensatz.biobank@2026.0.1` · `publisher Medizininformatik Initiative` (Quell-RuleSet schlägt Template-Default NUM-DIZ) · `license CC-BY-4.0` (DEC-1) · `jurisdiction DE` · `copyrightYear 2021+` (erster Commit) · `date/approvalDate 2026-02-11` (Tag-Datum v2026.0.1) · Topic NCI C70699 (DEC-7). **Kein bestehender Metadatenwert wurde aus einem Recovery-Wert überschrieben.**

### Where each value came from (GENERATED — do not retype)

| Field | Tier | Source | Value | Contradiction |
| --- | --- | --- | --- | --- |
| packageId | P | package/package.json | de.medizininformatikinitiative.kerndatensatz.biobank |  |
| version | P | package/package.json | 2026.0.1 |  |
| description | P | package/package.json | Medizininformatik Initiative - Kerndatensatz Erweiterungsmodul Biobank / Bioprobendaten |  |
| fhirVersions | P | package/package.json | ["4.0.1"] |  |
| jurisdiction | P | package/package.json | urn:iso:std:iso:3166#DE |  |
| dependency:de.basisprofil.r4 | P | package/package.json (source pin) | 1.5.x | YES -- Gate A |
| dependency:de.medizininformatikinitiative.kerndatensatz.meta | P | package/package.json (source pin) | 2026.0.x | YES -- Gate A |
| dependency:eu.miabis.r4 | P | package/package.json (source pin) | 0.2.0 |  |
| dependency:hl7.fhir.r4.core | P | package/package.json (source pin) | 4.0.1 |  |
| title | R | README.md first heading | FHIR Profile für KDS Biobanken | YES -- Gate A |
| packageId | source | package.json+published-package | de.medizininformatikinitiative.kerndatensatz.biobank |  |
| version | source | sushi-config.yaml+package.json+package | 2026.0.1 |  |
| canonical | source | sushi-config.yaml | https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank |  |
| status | source | sushi-config.yaml | active |  |
| fhirVersion | source | sushi-config.yaml | 4.0.1 |  |
| title | source | sushi-config.yaml (commented-out name:) | KDS Biobanken | YES -- Gate A |
| title | R | README.md | FHIR Profile für KDS Biobanken | YES -- Gate A |
| publisher | source | input/fsh/rulesets/publisher.fsh (artefact-level RuleSet) | Medizininformatik Initiative |  |
| license | source | input/fsh/rulesets/license-terms.fsh (artefact-level spdx extension); no package field, no LICENSE file -- Gate A | CC-BY-4.0 |  |
| description | P | package.json | Medizininformatik Initiative - Kerndatensatz Erweiterungsmodul Biobank / Bioprobendaten |  |
| dependency:de.basisprofil.r4 | source | kerndatensatz-basis+onko pin 1.5.4; source floating pin resolved, Gate A | 1.5.x->1.5.4 | YES -- Gate A |
| dependency:de.medizininformatikinitiative.kerndatensatz.meta | source | registry latest 2026.0.x is 2026.0.0 (onko pins same); Gate A | 2026.0.x->2026.0.0 | YES -- Gate A |

## Verification (GENERATED — paste `migration-log/verification.md`, do not retype)

## Verification (generated — do not retype)

Produced by `verify-migration.py` from the target tree AND `migration-log/run.log`, the two oracles. **108 IDENTISCH · 31 DIVERGIERT · 40 NICHT PRÜFBAR.**

Verdicts: **IDENTISCH** = matches the source · **DIVERGIERT** = differs, named below · **NICHT PRÜFBAR** = could not be checked, which is **not** a pass and owes a named human an action.

| Layer | Check | What it asks | IDENTISCH | DIVERGIERT | NICHT PRÜFBAR |
|---|---|---|---|---|---|
| conservation | C1 | every source artefact still exists in the migrated module | 1 | 0 | 0 |
| conservation | C2 | every artefact is reachable from the rendered Artifacts page | 2 | 0 | 0 |
| conservation | C3 | every source guide page was migrated or explicitly retired | 29 | 0 | 0 |
| conservation | C4 | the source's narrative text is present somewhere in the target | 2 | 15 | 12 |
| conservation | C5 | menus lead somewhere, and every page is in a menu | 4 | 0 | 0 |
| conservation | C6 | each text passage landed on the page the page map promised | 25 | 0 | 0 |
| conservation | C7 | content the migration wrote is marked as such in the guide | 0 | 9 | 10 |
| fidelity | F1 | module identity is unchanged (id, canonical, version, licence, ...) | 7 | 0 | 2 |
| fidelity | F2 | dependency versions are pinned exactly as the source pinned them | 1 | 2 | 3 |
| fidelity | F3 | the licence is asserted from evidence, never defaulted | 2 | 0 | 0 |
| fidelity | F4 | no mechanical FSH conversion residue is left | 1 | 0 | 0 |
| provenance | P1 | the rendered site reports the template package it was built with | 1 | 0 | 0 |
| provenance | P2 | the vendored template ref matches what the run log recorded | 0 | 0 | 1 |
| provenance | P3 | the IG Publisher version matches the workflow pin | 1 | 0 | 1 |
| provenance | P4 | the source guide was pinned to a published version, not 'current' | 0 | 0 | 1 |
| provenance | P5 | ig.ini points at the IG resource the build actually writes | 1 | 0 | 0 |
| rendering | R1 | tables, tabs and images render with content, not empty | 2 | 0 | 1 |
| rendering | R2 | page header and footer metadata render correctly | 0 | 2 | 0 |
| rendering | R3 | a translated page really differs from the default language | 1 | 0 | 0 |
| rendering | R4 | no links point at template example artefacts that were deleted | 1 | 0 | 0 |
| rendering | R5 | every page has a title unit in the translation catalogue | 1 | 0 | 0 |
| log | L0 | a run log exists at all | 1 | 0 | 0 |
| log | L1 | every partial-success warning was acted on | 1 | 0 | 0 |
| log | L2 | every expected step actually wrote a log line | 22 | 0 | 7 |
| log | L3 | no identity contradiction is still open | 1 | 3 | 0 |
| log | L4 | the log's counts agree with what the tree holds | 1 | 0 | 2 |

### DIVERGIERT — each one a stop or a recorded decision

| id | Check | What it asks | Subject | Evidence | Next action | Auto-fixable |
|---|---|---|---|---|---|---|
| `C4-811435` | C4 | the source's narrative text is present somewhere in the target | BeschreibungModul.page.md | 5 of 23 PROSE runs of the source page are in no target page (first: Sowohl die übergeordnete Biobank in ihrer Organisation, ihr…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-e4b03b` | C4 | the source's narrative text is present somewhere in the target | BeschreibungvonSzenarienfrdieAnwendungderModule.page.md | 3 of 5 PROSE runs of the source page are in no target page (first: Bereits etablierte Anwendungen dieser Harmonisierung, die es…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-196ae3` | C4 | the source's narrative text is present somewhere in the target | CapabilityStatement.page.md | 3 of 6 PROSE runs of the source page are in no target page (first: ## Um eine dezentrale Datenauswertung mittels des Deutsche F…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-f28d3b` | C4 | the source's narrative text is present somewhere in the target | DatensaetzeinklBeschreibungen.page.md | 3 of 10 PROSE runs of the source page are in no target page (first: Für jedes Element innerhalb des Logical Models existiert ein…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-49d110` | C4 | the source's narrative text is present somewhere in the target | FHIR-Profile/Index.page.md | 4 of 5 PROSE runs of the source page are in no target page (first: Insbesondere sei hier die [International Patient Summary]( h…); 3 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-6b5222` | C4 | the source's narrative text is present somewhere in the target | KontextimGesamtprojektBezgezuanderenModulen.page.md | 3 of 7 PROSE runs of the source page are in no target page (first: Sowohl die unterschiedlichen Sammlungen in einer Biobank als…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-08bffd` | C4 | the source's narrative text is present somewhere in the target | Kulturbedingungen.page.md | 3 of 5 PROSE runs of the source page are in no target page (first: Allerdings wird von Seiten des KDS Teams empfohlen, solche I…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-05812f` | C4 | the source's narrative text is present somewhere in the target | MIIIGModulBiobank/Index.page.md | 6 of 13 PROSE runs of the source page are in no target page (first: Die vorliegende Spezifikation beschreibt die FHIR Repräsenta…); 6 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-6d4769` | C4 | the source's narrative text is present somewhere in the target | Mutationen.page.md | 3 of 4 PROSE runs of the source page are in no target page (first: Bei der Abbildung von in einer Zellinie/Organoid festgestell…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-24dd1c` | C4 | the source's narrative text is present somewhere in the target | Phenotyp.page.md | 2 of 2 PROSE runs of the source page are in no target page (first: Für eine Zellinie oder ein Organoid kann eine Diagnose / ein…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-fe91db` | C4 | the source's narrative text is present somewhere in the target | Referenzen.page.md | 10 of 17 PROSE runs of the source page are in no target page (first: Der [SPREC 4.0]( (Standard PREanalytical Code) wurde entwick…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-03ec0a` | C4 | the source's narrative text is present somewhere in the target | Release-Notes.page.md | 1 of 11 PROSE runs of the source page are in no target page (first: - Fix eines Problemes mit der Kardinalität der Extensions in…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-0cb00c` | C4 | the source's narrative text is present somewhere in the target | Specimen/Extensions.page.md | 2 of 10 PROSE runs of the source page are in no target page (first: Um zu einer Verabeitung oder Lagerung die jeweils herrschend…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-dcd614` | C4 | the source's narrative text is present somewhere in the target | Terminologien.page.md | 15 of 31 PROSE runs of the source page are in no target page (first: Zur eindeutigen Identifizierung von Additiven, Containertype…); 21 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-d47516` | C4 | the source's narrative text is present somewhere in the target | UML.page.md | 2 of 5 PROSE runs of the source page are in no target page (first: Dieses logische Model dient nur zur Abbildung der Dateneleme…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C7-0209b1` | C7 | content the migration wrote is marked as such in the guide | index | 5 of 23 prose runs of the source page BeschreibungModul.page.md are in no target page (C4), and index carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-9191f0` | C7 | content the migration wrote is marked as such in the guide | capability-statements | 3 of 6 prose runs of the source page CapabilityStatement.page.md are in no target page (C4), and capability-statements carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-bd1fc5` | C7 | content the migration wrote is marked as such in the guide | logical-models | 3 of 10 prose runs of the source page DatensaetzeinklBeschreibungen.page.md are in no target page (C4), and logical-models carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-283e85` | C7 | content the migration wrote is marked as such in the guide | implementer-guidance | 3 of 7 prose runs of the source page KontextimGesamtprojektBezgezuanderenModulen.page.md are in no target page (C4), and implementer-guidance carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-97eecf` | C7 | content the migration wrote is marked as such in the guide | index | 6 of 13 prose runs of the source page MIIIGModulBiobank/Index.page.md are in no target page (C4), and index carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-66a0fd` | C7 | content the migration wrote is marked as such in the guide | implementer-guidance | 10 of 17 prose runs of the source page Referenzen.page.md are in no target page (C4), and implementer-guidance carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-4f50d8` | C7 | content the migration wrote is marked as such in the guide | changes | 1 of 11 prose runs of the source page Release-Notes.page.md are in no target page (C4), and changes carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-fabfa8` | C7 | content the migration wrote is marked as such in the guide | code-systems | 15 of 31 prose runs of the source page Terminologien.page.md are in no target page (C4), and code-systems carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-8a1680` | C7 | content the migration wrote is marked as such in the guide | uml-diagrams | 2 of 5 prose runs of the source page UML.page.md are in no target page (C4), and uml-diagrams carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `F2-d14403` | F2 | dependency versions are pinned exactly as the source pinned them | de.basisprofil.r4 | target 1.5.4  vs  source pin 1.5.x (the source tree (--source)) | the source pin is the evidence; a registry dist-tag is not. Restore the pin or make the bump a Gate-A decision | no |
| `F2-ce5cda` | F2 | dependency versions are pinned exactly as the source pinned them | de.medizininformatikinitiative.kerndatensatz.meta | target 2026.0.0  vs  source pin 2026.0.x (the source tree (--source)) | the source pin is the evidence; a registry dist-tag is not. Restore the pin or make the bump a Gate-A decision | no |
| `R2-48ed52` | R2 | page header and footer metadata render correctly | output/de id="ig-status" [{{] | on 1 page(s), e.g. searchform.html: Search {{title}} (Current Build) | rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) | no |
| `R2-d1da9a` | R2 | page header and footer metadata render correctly | output/en id="ig-status" [{{] | on 1 page(s), e.g. searchform.html: Search {{title}} (Current Build) | rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) | no |
| `L3-117415` | L3 | no identity contradiction is still open | identity field dependency:de.basisprofil.r4 | 1 unresolved contradiction WARN(s), first at 2026-08-27T16:59:28Z: identity-contradiction: field=dependency:de.basisprofil.r4 now=1.5.x->1.5.4 (tier source, kerndatensatz-basis+… | unresolved at verification time. It is a Gate-A decision, never a precedence puzzle to settle mechanically -- record it with a `decision:` line naming the field | no |
| `L3-dce37c` | L3 | no identity contradiction is still open | identity field dependency:de.medizininformatikinitiative.kerndatensatz.meta | 1 unresolved contradiction WARN(s), first at 2026-08-27T16:59:28Z: identity-contradiction: field=dependency:de.medizininformatikinitiative.kerndatensatz.meta now=2026.0.x->2026.… | unresolved at verification time. It is a Gate-A decision, never a precedence puzzle to settle mechanically -- record it with a `decision:` line naming the field | no |
| `L3-fac1a0` | L3 | no identity contradiction is still open | identity field title | 2 unresolved contradiction WARN(s), first at 2026-08-27T16:49:47Z: identity-contradiction: field=title now=KDS Biobanken (tier source, sushi-config.yaml (commented-out name:)) v… | unresolved at verification time. It is a Gate-A decision, never a precedence puzzle to settle mechanically -- record it with a `decision:` line naming the field | no |

### NICHT PRÜFBAR — not a pass; each needs a human

| id | Check | What it asks | Subject | Why not mechanisable | Who does what |
|---|---|---|---|---|---|
| `C4-84b3c1` | C4 | the source's narrative text is present somewhere in the target | DNAKonzentration.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 2 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-b5cb80` | C4 | the source's narrative text is present somewhere in the target | Karyotyp.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 2 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-e368f8` | C4 | the source's narrative text is present somewhere in the target | Morphologie.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 2 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-89bd7b` | C4 | the source's narrative text is present somewhere in the target | Organization/Index.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 3 of 9 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-f0ae68` | C4 | the source's narrative text is present somewhere in the target | Proliferation.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 2 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-7a29e6` | C4 | the source's narrative text is present somewhere in the target | Qualitaetspruefung.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 3 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-661030` | C4 | the source's narrative text is present somewhere in the target | Specimen/Index.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 5 of 8 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-eafef6` | C4 | the source's narrative text is present somewhere in the target | SubstanceAdditiv.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 2 of 2 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-fc1144` | C4 | the source's narrative text is present somewhere in the target | TechnischeImplementierung/Index.page.md | the source page carries NO prose -- 0 generated table row(s) only | conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) |
| `C4-e81cb8` | C4 | the source's narrative text is present somewhere in the target | Wachstumstyp.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 2 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-a4894b` | C4 | the source's narrative text is present somewhere in the target | ZelllinieOrganoid/Index.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 3 of 4 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-4cb134` | C4 | the source's narrative text is present somewhere in the target | index.page.md | the source page carries NO prose -- 0 generated table row(s) only | conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) |
| `C7-8d5adc` | C7 | content the migration wrote is marked as such in the guide | DNAKonzentration.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-efc531` | C7 | content the migration wrote is marked as such in the guide | Karyotyp.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-4cfe2e` | C7 | content the migration wrote is marked as such in the guide | Morphologie.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-9ae902` | C7 | content the migration wrote is marked as such in the guide | Organization/Index.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-57aad7` | C7 | content the migration wrote is marked as such in the guide | Proliferation.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-9aaad1` | C7 | content the migration wrote is marked as such in the guide | Qualitaetspruefung.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-c2f6a3` | C7 | content the migration wrote is marked as such in the guide | Specimen/Index.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-f45019` | C7 | content the migration wrote is marked as such in the guide | SubstanceAdditiv.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-d3ef8e` | C7 | content the migration wrote is marked as such in the guide | Wachstumstyp.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-160c69` | C7 | content the migration wrote is marked as such in the guide | ZelllinieOrganoid/Index.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `F1-093008` | F1 | module identity is unchanged (id, canonical, version, licence, ...) | id | no source value (neither the source tree nor the claims ledger yields one) | supply it at Gate A -- an identity field nobody can compare is not a field that matches |
| `F1-b5b102` | F1 | module identity is unchanged (id, canonical, version, licence, ...) | title | the claims ledger holds 2 contradicting readings (FHIR Profile für KDS Biobanken, KDS Biobanken) | decide the field at Gate A (check L3), then re-run verification |
| `F2-fd0e73` | F2 | dependency versions are pinned exactly as the source pinned them | hl7.fhir.uv.crmi | target-only dependency 2.0.0 (not in the source) | confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition |
| `F2-047205` | F2 | dependency versions are pinned exactly as the source pinned them | hl7.fhir.uv.extensions.r4 | target-only dependency 5.3.0 (not in the source) | confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition |
| `F2-8f9355` | F2 | dependency versions are pinned exactly as the source pinned them | hl7.terminology.r4 | target-only dependency 7.3.0 (not in the source) | confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition |
| `P2-264584` | P2 | the vendored template ref matches what the run log recorded | vendored template ref | no `5.2 skeleton-vendored … ref=` line in the run log | emit it when vendoring: `bash "$ML" info 5.2 skeleton-vendored "… ref=<tag> commit=<sha>"` |
| `P3-c39a79` | P3 | the IG Publisher version matches the workflow pin | IG Publisher currency | the publisher reports itself out of date (current 2.3.3) | upgrading the publisher is a target-repository decision, not a migration one -- record it, do not act on it here |
| `P4-379bde` | P4 | the source guide was pinned to a published version, not 'current' | source guide version | no `?version=` recorded in the run log or the harvest manifest | record the pinned, PUBLISHED guide version like the source commit SHA (spec 5.1c.3) |
| `R1-76f413` | R1 | tables, tabs and images render with content, not empty | source-versus-target rendering | no harvested source HTML (./migration-log/guide-harvest/html) and/or no page map | harvest with --keep-html and write the page map; without a source rendering, 'non-empty where non-empty in the source' has no reference |
| `L2-930ba2` | L2 | every expected step actually wrote a log line | 5.1d guide-harvest | no line in the log; the step is conditional (the narrative is not in the repository) | confirm the condition did not hold -- This is the step whose absence shipped the template's starter pages under a module's name. |
| `L2-91b7ea` | L2 | every expected step actually wrote a log line | 5.1b.2 gofsh-input | no line in the log; required only for source shape B, which the log does not state | record the shape (pre.2 classify-source-shape) -- The input count, taken BY CONTENT, is the number goFSH's own counts are reconciled against. |
| `L2-f0a960` | L2 | every expected step actually wrote a log line | 5.1b.2 gofsh-convert | no line in the log; required only for source shape B, which the log does not state | record the shape (pre.2 classify-source-shape) -- goFSH exits 0 having converted 1 of 20 inputs when `-t json-and-xml` is missing; only this line's counts show it. |
| `L2-395531` | L2 | every expected step actually wrote a log line | 5.1b.3 sushi-before | no line in the log; required only for source shape B, which the log does not state | record the shape (pre.2 classify-source-shape) -- The "41" of 41 → 5: without the baseline the repair's effect is unmeasurable. |
| `L2-837623` | L2 | every expected step actually wrote a log line | 5.1b.3 postprocess-gofsh | no line in the log; required only for source shape B, which the log does not state | record the shape (pre.2 classify-source-shape) -- The two mechanical repairs; a parse error otherwise TRUNCATES a file while SUSHI still exports the instance. |
| `L2-41942e` | L2 | every expected step actually wrote a log line | 5.1b.3 sushi-after | no line in the log; required only for source shape B, which the log does not state | record the shape (pre.2 classify-source-shape) -- The "5": the residual, which must be named unresolvable parents and nothing else. |
| `L2-cd2674` | L2 | every expected step actually wrote a log line | 5.1b.5 parent-snapshots | no line in the log; the step is conditional (a parent package ships no snapshots) | confirm the condition did not hold -- A hand-rolled snapshot fabricates a parent; the detect run is what proves none was needed. |
| `L4-106e61` | L4 | the log's counts agree with what the tree holds | conversion count | no `gofsh-convert … actual=` line in the log | shape B only; for shape A there is nothing to convert |
| `L4-f17740` | L4 | the log's counts agree with what the tree holds | page count | no harvested count in the log and/or no harvest manifest | harvest the guide (step 2c) where the narrative is not in the repo |

**Inputs:** target `.` · source `/private/tmp/claude-501/-Users-thome-code-fhir-profiling-kerndatensatzmodul-biobank/30eeb243-bc14-4871-9a04-b52435adedae/scratchpad/biobank-source` · rendered `/Users/thome/code/fhir-profiling/kerndatensatzmodul-biobank/output` · log `./migration-log/run.log`

## Auto-fix (spec §12 — only if the loop ran)

Not run — die drei Fixes (FIX-1…3) wurden einzeln, geloggt und revertierbar gesetzt; keiner fiel in die vier Allowlist-Klassen der Auto-Fix-Schleife.

## Protocol (what was executed — for auditors)

Vollständig in `migration-log/run.log` (append-only; jede Behauptung dieses Reports führt auf eine Zeile zurück; WARN/ERROR: `grep -E '  (WARN |ERROR)  ' migration-log/run.log`). Kette: Gate-0-Preflight (`1 preflight-analysis`) → Simplifier-Discovery (`1 simplifier-discover`; Befund **no-published-version**) → Identity-Ledger (`2.1 *`; 2 Widerspruchs-WARNs = DEC-2/3) → Skeleton (`5.2 *`; sushi-skeleton 0 Errors; Kollisionslisten geloggt) → Transfer-Nachweis (`5.3 transfer-acceptance`; `comm -3` leer bis auf 7 benannte Scaffold-Dateien; Canonical-Diff leer) → Narrative (`5.4 fql-scan`: 204 Direktiven gemappt, 0 unknown; `5.4c page-routing` + `page-map-review`; `5.4a`/`5.4b` M9/M11; `5.4d derived-scan`: 10 Marker, 0 Findings) → Bilingual (`5.5 gen-page-title-po`: 21/21 übersetzt) → Build (`5.6 sushi-build` 0 Errors; `5.6 ig-publisher` qa 73/391/0) → Postflight+Delta (`7 *`) → Verifikation (`11 verify-migration`: 108/31/40). **Transparenz:** fünf Schritte wurden nachträglich unter der kanonischen Step-ID geloggt (jeweils als „retro-logged" gekennzeichnet, mit Verweis auf die Originalzeile); eine `r2-triage`-Zeile wurde per CORRECTION-Zeile richtiggestellt, nachdem ihre erste Evidenzangabe nicht haltbar war.

## Sign-off — what must happen before anything is published

Gate D (Release per KDS-Governance: TF KDS / AG IOP / NSG) ist organisatorisch, nicht technisch — nichts publiziert vor Gate D. Vorher:

### QA checklist (GENERATED by qa-checklist.py — do not retype; regenerate instead)

One checkbox per open obligation, from the machine ledgers. Ticking a box asserts the *named person* did the *named thing*. This list belongs inside `migration-log/migration-report.md` (section *Sign-off*): the detail behind every item id, the glossary for every code, term, gate owner and source shape, and the *How to re-run* commands all live there (and in the skill's `references/codes.md`). Pages named bare live in `input/pagecontent/`; names ending in `-intro` live in `input/intro-notes/`. 108 finding(s) verdicted IDENTISCH owe nobody anything and are not listed.

#### Gate A — identity (module maintainer, with TF-KDS)

- [ ] **F1-093008** (F1 - module identity unchanged): supply it at Gate A -- an identity field nobody can compare is not a field that matches — *do the named action so the check can run - this is not a pass*
- [ ] **F1-b5b102** (F1 - module identity unchanged): decide the field at Gate A (check L3), then re-run verification — *do the named action so the check can run - this is not a pass*
- [ ] **F2 ×2** (F2 - dependency pins identical to the source's): the source pin is the evidence; a registry dist-tag is not. Restore the pin or make the bump a Gate-A decision — *fix it, or accept it with a named reason in the report*  <sub>ids: F2-d14403, F2-ce5cda</sub>
- [ ] **F2 ×3** (F2 - dependency pins identical to the source's): confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition — *do the named action so the check can run - this is not a pass*  <sub>ids: F2-fd0e73, F2-047205, F2-8f9355</sub>
- [ ] **identity `dependency:de.basisprofil.r4`** claims 2 different values: `1.5.x` (package/package.json (source pin)) vs `1.5.x->1.5.4` (kerndatensatz-basis+onko pin 1.5.4; source floating pin resolved, Gate A) — *choose one and record why*
- [ ] **identity `dependency:de.medizininformatikinitiative.kerndatensatz.meta`** claims 2 different values: `2026.0.x` (package/package.json (source pin)) vs `2026.0.x->2026.0.0` (registry latest 2026.0.x is 2026.0.0 (onko pins same); Gate A) — *choose one and record why*
- [ ] **identity `title`** claims 2 different values: `FHIR Profile für KDS Biobanken` (README.md first heading) vs `KDS Biobanken` (sushi-config.yaml (commented-out name:)) — *choose one and record why*

#### Gate B — narrative (the module's clinical and technical authors)

- [ ] **C4 ×15** (C4 - the source's narrative text present somewhere): map the missing text to a target page section, or record the loss in the report's content map — *fix it, or accept it with a named reason in the report*  <sub>ids: C4-811435, C4-e4b03b, C4-196ae3, C4-f28d3b, C4-49d110, C4-6b5222, C4-08bffd, C4-05812f, C4-6d4769, C4-24dd1c, C4-fe91db, C4-03ec0a, C4-0cb00c, C4-dcd614, C4-d47516</sub>
- [ ] **C4 ×10** (C4 - the source's narrative text present somewhere): read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here — *do the named action so the check can run - this is not a pass*  <sub>ids: C4-84b3c1, C4-b5cb80, C4-e368f8, C4-89bd7b, C4-f0ae68, C4-7a29e6, C4-661030, C4-eafef6, C4-e81cb8, C4-a4894b</sub>
- [ ] **C4 ×2** (C4 - the source's narrative text present somewhere): conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) — *do the named action so the check can run - this is not a pass*  <sub>ids: C4-fc1144, C4-4cb134</sub>
- [ ] **R2 ×2** (R2 - page header/footer metadata render correctly): rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) — *fix it, or accept it with a named reason in the report*  <sub>ids: R2-48ed52, R2-d1da9a</sub>
- [ ] **R1-76f413** (R1 - tables, tabs and images render with content): harvest with --keep-html and write the page map; without a source rendering, 'non-empty where non-empty in the source' has no reference — *do the named action so the check can run - this is not a pass*
- [ ] **`examples`**: review 2 migration-written block(s) (bridge; default/de) — *keep, correct, or delete each one*
- [ ] **`extensions`**: review 2 migration-written block(s) (bridge; default/de) — *keep, correct, or delete each one*
- [ ] **`guidance`**: review 2 migration-written block(s) (stand-in; default/de) — *keep, correct, or delete each one*
- [ ] **`profiles`**: review 2 migration-written block(s) (bridge; default/de) — *keep, correct, or delete each one*
- [ ] **`value-sets`**: review 2 migration-written block(s) (bridge; default/de) — *keep, correct, or delete each one*
- [ ] **`MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/Index.page.md` RETIRED**: intentionally empty in source ("Diese Seite wurde absichtlich leer gelassen") — children routed individually — *confirm nothing in it is needed*
- [ ] **`MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/index.page.md` RETIRED**: case-duplicate of Index.page.md on case-insensitive FS (same file, listed twice) — *confirm nothing in it is needed*
- [ ] **`MIIIGModulBiobank/TechnischeImplementierung/Index.page.md` RETIRED**: intentionally empty in source ("Diese Seite wurde absichtlich leer gelassen") — children routed individually — *confirm nothing in it is needed*

#### Gate C — language (a reviewer competent in both languages)

- [ ] **C7 ×9** (C7 - migration-written content is marked as such): mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead — *fix it, or accept it with a named reason in the report*  <sub>ids: C7-0209b1, C7-9191f0, C7-bd1fc5, C7-283e85, C7-97eecf, C7-66a0fd, C7-4f50d8, C7-fabfa8, C7-8a1680</sub>
- [ ] **C7 ×10** (C7 - migration-written content is marked as such): read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d — *do the named action so the check can run - this is not a pass*  <sub>ids: C7-8d5adc, C7-efc531, C7-4cfe2e, C7-9ae902, C7-57aad7, C7-9aaad1, C7-c2f6a3, C7-f45019, C7-d3ef8e, C7-160c69</sub>

#### Gate D — release (TF-KDS / AG IOP / NSG; merging is what publishes)

- [ ] **P2-264584** (P2 - vendored template ref matches the log): emit it when vendoring: `bash "$ML" info 5.2 skeleton-vendored "… ref=<tag> commit=<sha>"` — *do the named action so the check can run - this is not a pass*
- [ ] **P3-c39a79** (P3 - IG Publisher version matches the workflow pin): upgrading the publisher is a target-repository decision, not a migration one -- record it, do not act on it here — *do the named action so the check can run - this is not a pass*
- [ ] **P4-379bde** (P4 - source guide pinned to a published version): record the pinned, PUBLISHED guide version like the source commit SHA (spec 5.1c.3) — *do the named action so the check can run - this is not a pass*
- [ ] **L2-930ba2** (L2 - every expected step wrote a log line): confirm the condition did not hold -- This is the step whose absence shipped the template's starter pages under a module's name. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-91b7ea** (L2 - every expected step wrote a log line): record the shape (pre.2 classify-source-shape) -- The input count, taken BY CONTENT, is the number goFSH's own counts are reconciled against. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-f0a960** (L2 - every expected step wrote a log line): record the shape (pre.2 classify-source-shape) -- goFSH exits 0 having converted 1 of 20 inputs when `-t json-and-xml` is missing; only this line's counts show it. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-395531** (L2 - every expected step wrote a log line): record the shape (pre.2 classify-source-shape) -- The "41" of 41 → 5: without the baseline the repair's effect is unmeasurable. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-837623** (L2 - every expected step wrote a log line): record the shape (pre.2 classify-source-shape) -- The two mechanical repairs; a parse error otherwise TRUNCATES a file while SUSHI still exports the instance. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-41942e** (L2 - every expected step wrote a log line): record the shape (pre.2 classify-source-shape) -- The "5": the residual, which must be named unresolvable parents and nothing else. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-cd2674** (L2 - every expected step wrote a log line): confirm the condition did not hold -- A hand-rolled snapshot fabricates a parent; the detect run is what proves none was needed. — *do the named action so the check can run - this is not a pass*
- [ ] **L4-106e61** (L4 - the log's counts agree with the tree): shape B only; for shape A there is nothing to convert — *do the named action so the check can run - this is not a pass*
- [ ] **L4-f17740** (L4 - the log's counts agree with the tree): harvest the guide (step 2c) where the narrative is not in the repo — *do the named action so the check can run - this is not a pass*
- [ ] **pre/post delta**: `prepost-delta.md` shows no REGRESSION row, or every regression is explained in the report — *never merged unexplained*
- [ ] **CI**: the module's own checks are green on the migration branch
- [ ] **gates A–C**: signed by the named reviewers above
- [ ] **publication decision**: recorded with name and date — *merging is what publishes*

<!-- REPORT-AUTHORED ITEMS - the generator cannot enumerate judgement.
     Add ONE checkbox per DEC-n / REV-n / QA-n block of this report,
     under the gate that owns it, in the form:
     - [ ] **DEC-1** <its one-line what> - *<its next action>*  -->

Zusätzlich (report-authored):

- [ ] **DEC-1 … DEC-8** entschieden (Gate A — Modulverantwortliche + TF KDS)
- [ ] **REV-1 … REV-4** geprüft (Gate B/C)
- [ ] **QA-1 … QA-7** je einem Owner zugewiesen (③)
- [ ] Retirement von `implementation-guides/**` nach Gate D geplant (QA-7)

## Mini-glossary (backstop — every term is also glossed where it is used)

**SUSHI** = FSH→FHIR-Compiler · **IG Publisher** = HL7-Renderer/Validator des Guides · **FSH** = FHIR Shorthand · **Canonical URL** = weltweit eindeutige Artefakt-URL; Änderung bricht jeden Konsumenten · **CalVer** = MII-Versionsschema JJJJ.n.n · **Intro-Note** = Markdown, das über einer generierten Artefaktseite rendert · **DERIVED-Marker** = Kommentar+Review-Box um Text, den die Migration neu geschrieben hat · **Page-Map** = generierter, human-reviewter Vertrag Quellseite→Zielseite · **advisor.json** = Simplifier-CI-Suppressionsliste der Quelle · **tx** = Terminologieserver (lokaler Build: tx.fhir.org) · **FSHOnly** = SUSHI-Modus der Quelle, der nur Ressourcen, keine IG-Ressource erzeugt.
