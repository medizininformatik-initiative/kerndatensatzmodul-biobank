# Page-structure advice

**This report PROPOSES and never edits a module.** It reads the source and target repositories read-only; its only writes are this report and the page-map v2 TSV (`--map`) - the map is the PRIMARY output and the contract step 5 consumes, this report is its rendering. Every routing row below is the branch the MEASUREMENTS support - a human (or the skill at step 5) decides and applies it.

| Input | Value |
| --- | --- |
| source repo | `/private/tmp/claude-501/-Users-thome-code-fhir-profiling-kerndatensatzmodul-biobank/30eeb243-bc14-4871-9a04-b52435adedae/scratchpad/biobank-source` |
| target repo | `.` |
| routing table | `/Users/thome/code/fhir-profiling/kerndatensatzmodul-biobank/.claude/skills/mii-ig-migration/references/routing-table.tsv` (17 patterns) |
| Gate 0 preflight | `/Users/thome/code/fhir-profiling/kerndatensatzmodul-biobank/migration-log/preflight-analysis.json` |
| artefact census | fsh-generated/resources (63 resources; cross-checked by Gate 0's generated_crosscheck) |
| page map | `migration-log/page-map.tsv` |
| generated | 2026-08-27T17:01:38Z |
| script | `page-structure-advice.py` v1.3.0 |

Contract limits in force: menu total <= 33, dropdown children <= 10, top level <= 8, menu depth <= 2; size gate at > 2500 words, > 4 merged sources, or ANY repeated heading title; hub at >= 3 children.

## 1. Source page tree

The tree is taken from the FIRST of four inputs that yields pages: **(a)** the `pages:` block of the source `sushi-config.yaml`, **(b)** the authoritative Simplifier guide tree under `implementation-guides/` (spec 5.1a), **(c)** a flat count of `input/pagecontent/*.md`.

**Input used: (b) the Simplifier guide tree `implementation-guides/mii-ig-biobanken-de-v2026`, walked from its `toc.yaml`.**

### 1.0 Simplifier guide trees found

Every tree under `implementation-guides/` is listed - the choice is never made silently. Dispositions follow spec 5.1a: #1 authoritative, #2 parallel-language harvest seed, #3 historical/shared retained, #4 unrecognized.

| Guide tree | Title | Version (dir name) | Version (guide.yaml) | Lang | `*.page.md` on disk | Disposition |
| --- | --- | --- | --- | --- | ---: | --- |
| `mii-ig-biobanken-de-v2026` | Medizininformatik Initiative - Implementation Guide - Bioprobendaten v2026 | 2026 | 2026.0.1 | DE | 29 | **AUTHORITATIVE** - steps 5.4/5.5 operate on this tree |

**Chosen: `mii-ig-biobanken-de-v2026`** - HUMAN OVERRIDE: --guide-tree mii-ig-biobanken-de-v2026 (the spec 5.1a ranking below was not applied).

The module's narrative language read from `sushi-config.yaml` `language:` is **not stated**.

**A human can override this choice**: re-run with `--guide-tree <directory name>`. The ranking above is evidence, not a verdict - confirm it against the rendered IG and record it in the inventory (Gate B reviews it).

### 1.1 Depth histogram

Walked from `implementation-guides/mii-ig-biobanken-de-v2026/toc.yaml`: an entry whose `filename` ends in `.page.md` is a page, any other `filename` is a sub-directory holding its own `toc.yaml`. A sub-directory is a LEVEL, not a page, so every page of one directory shares one level (that is how Simplifier renders a folder), and the levels are shifted so the shallowest page sits at level 1 - this guide's root `toc.yaml` lists only a folder, which adds no page level. Routing still needs a page parent, so each directory is represented by its `Index.page.md` and its remaining pages plus its sub-folders' representatives become that page's children; a parent may therefore share its children's level.

| Level | Pages | Share |
| --- | ---: | ---: |
| 1 | 5 | 17% |
| 2 | 8 | 27% |
| 3 | 2 | 7% |
| 4 | 15 | 50% |
| **total** | **30** | 100% |

Maximum depth used: **4**. Total words across the 30 source pages: **4952**. Pages in `input/pagecontent/`: **0**.

### 1.1a Structural findings in the source tree

Reported, never silently absorbed - each one is a page the migration would otherwise lose or invent.

- `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/toc.yaml` lists `glossar.md`, but the **sub-directory does not exist** - the entry is dangling and produced no page.
- `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/index.page.md` exists on disk but is **not listed in MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.

### 1.2 Parent-child tree

```
`- Index  `MIIIGModulBiobank/Index.page.md`
   |- Release Notes  `MIIIGModulBiobank/Release-Notes.page.md`
   |- Beschreibung Modul  `MIIIGModulBiobank/BeschreibungModul.page.md`
   |- Kontext im Gesamtprojekt / Bezüge zu anderen Modulen  `MIIIGModulBiobank/KontextimGesamtprojektBezgezuanderenModulen.page.md`
   |- Referenzen  `MIIIGModulBiobank/Referenzen.page.md`
   |- Index  `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/Index.page.md`
   |  |- Beschreibung von Szenarien für die Anwendung der Module  `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md`
   |  |- Datensätze inkl. Beschreibungen  `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/DatensaetzeinklBeschreibungen.page.md`
   |  |- UML  `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/UML.page.md`
   |  `- index  `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/index.page.md`
   `- Index  `MIIIGModulBiobank/TechnischeImplementierung/Index.page.md`
      |- Terminologien  `MIIIGModulBiobank/TechnischeImplementierung/Terminologien.page.md`
      |- CapabilityStatement  `MIIIGModulBiobank/TechnischeImplementierung/CapabilityStatement.page.md`
      `- Index  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Index.page.md`
         |- Substance (Additiv)  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/SubstanceAdditiv.page.md`
         |- Index  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Organization/Index.page.md`
         |  `- Extensions  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Organization/Extensions.page.md`
         |- Index  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/Index.page.md`
         |  |- Extensions  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/Extensions.page.md`
         |  |- DNAKonzentration  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/DNAKonzentration.page.md`
         |  `- Observation Qualitätsprüfung  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/Qualitaetspruefung.page.md`
         `- Index  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Index.page.md`
            |- Extensions  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Extensions.page.md`
            |- Observation Karyotyp  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Karyotyp.page.md`
            |- Observation Morphologie  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Morphologie.page.md`
            |- Observation Wachstumstyp  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Wachstumstyp.page.md`
            |- Observation Proliferation  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Proliferation.page.md`
            |- Mutationen  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Mutationen.page.md`
            |- Kulturbedingungen  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Kulturbedingungen.page.md`
            `- Phenotyp  `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Phenotyp.page.md`
```

## 2. Target page measurements

Words = whitespace tokens after removing HTML comments, table separator rows and the markup characters `>`, `|`, `*`, `_`, `` ` ``. Headings, list items, table cells and fenced code all count: the gate measures what the reader has to traverse. Repeated titles are compared case-sensitively; each repeat costs one publisher-appended anchor (`-2`, `-3`, ...). Merged sources are the distinct `<!-- source: X.md -->` section markers the migration itself left behind.

| Page | Words | h2 | h3 | h4 | other h | Repeated titles | Anchor collisions | Merged sources | Size gate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| `ImplementationGuide-mii-ig-biobank-de-v2026.md` | 286 | 0 | 5 | 0 | 0 | 0 | 0 | 0 | ok |
| `capability-statements.md` | 31 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `changes.md` | 560 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | ok |
| `code-systems.md` | 148 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `downloads.md` | 325 | 0 | 0 | 7 | 0 | 0 | 0 | 0 | ok |
| `examples.md` | 43 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `extensions.md` | 121 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `guidance.md` | 130 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `implementer-guidance.md` | 32 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `index.md` | 477 | 0 | 9 | 0 | 0 | 0 | 0 | 0 | ok |
| `logical-models.md` | 33 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `metadata.md` | 2198 | 0 | 1 | 7 | 1 | 0 | 0 | 0 | ok |
| `operations.md` | 104 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `profiles.md` | 77 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `rendering-artifacts.md` | 3933 | 0 | 8 | 3 | 0 | 0 | 0 | 0 | **TRIPS** - 3933 words > 2500 |
| `researcher-guidance.md` | 111 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `search-parameters.md` | 112 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `security-and-privacy.md` | 444 | 0 | 0 | 3 | 0 | 0 | 0 | 0 | ok |
| `translationinfo.md` | 80 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `uml-diagrams.md` | 42 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `value-sets.md` | 178 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `version-history.md` | 548 | 0 | 0 | 6 | 0 | 0 | 0 | 0 | ok |

### 2.1 Pages that trip the size gate

- **`rendering-artifacts.md`** - 3933 words > 2500.
  - rule 5: re-run routing preferring branches 1 and 2, or split.

## 3. Menu budget

Clickable entries are the menu's real destinations: every `<li><a>` except the dropdown toggles, which only repeat their first child's href.

| Metric | Measured | Contract limit | Headroom |
| --- | ---: | ---: | ---: |
| total clickable entries | 26 | 33 | 7 |
| widest dropdown (Artifacts) | 11 | 10 | -1 |
| top-level entries | 7 | 8 | 1 |
| menu depth used | 2 | 2 | 0 |

| Dropdown | Children | Free (of 10) |
| --- | ---: | ---: |
| Guidance | 5 | 5 |
| Conformance | 5 | 5 |
| Artifacts | 11 | -1 |
| Metadata | 2 | 8 |

After the proposals in section 4: total 7 free, top level 1 free, freest dropdown Metadata (8 free).

## 4. Routing proposal (spec 9d/9e)

One row per source page. The branch number is the spec's; the measurement column is the number that forced it. Branch-4 rows state the presentation (4a) and the visibility (4b), and, where a menu entry fits, the remaining budget after it. `Words` is the source page's own size, counted the same way as the target pages in section 2.

| # | Source page | Lvl | Children | Words | Branch | Proposed destination | Measurement |
| ---: | --- | ---: | ---: | ---: | --- | --- | --- |
| 1 | `MIIIGModulBiobank/Index.page.md` | 1 | 6 | 338 | 3 merge into agreed page | index.md | agreed page named 'index' exists in the target |
| 2 | `MIIIGModulBiobank/Release-Notes.page.md` | 1 | 0 | 165 | 3 merge into agreed page | changes.md | semantic match 'releasenotes' -> changes (routing-table) |
| 3 | `MIIIGModulBiobank/BeschreibungModul.page.md` | 1 | 0 | 382 | 3 merge into agreed page | index.md | semantic match 'beschreibungmodul' -> index (routing-table) |
| 4 | `MIIIGModulBiobank/KontextimGesamtprojektBezgezuanderenModulen.page.md` | 1 | 0 | 164 | 3 merge into agreed page | implementer-guidance.md | semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table) |
| 5 | `MIIIGModulBiobank/Referenzen.page.md` | 1 | 0 | 305 | 3 merge into agreed page | implementer-guidance.md | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 6 | `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/Index.page.md` | 2 | 4 | 10 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulBiobank/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 4 child page(s) |
| 7 | `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md` | 2 | 0 | 125 | 3 merge into agreed page | guidance.md | semantic match 'szenarien' -> guidance (routing-table) |
| 8 | `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/DatensaetzeinklBeschreibungen.page.md` | 2 | 0 | 145 | 3 merge into agreed page | logical-models.md | semantic match 'datensaetze' -> logical-models (routing-table) |
| 9 | `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/UML.page.md` | 2 | 0 | 63 | 3 merge into agreed page | uml-diagrams.md | semantic match 'uml' -> uml-diagrams (routing-table) |
| 10 | `MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/index.page.md` | 2 | 0 | 10 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/Index.page.md (its host has no menu entry) <br>_(on disk but not listed in MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/toc.yaml; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 0 child page(s) |
| 11 | `MIIIGModulBiobank/TechnischeImplementierung/Index.page.md` | 2 | 3 | 6 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulBiobank/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 3 child page(s) |
| 12 | `MIIIGModulBiobank/TechnischeImplementierung/Terminologien.page.md` | 2 | 0 | 1062 | 3 merge into agreed page | code-systems.md | semantic match 'terminologien' -> code-systems (routing-table) |
| 13 | `MIIIGModulBiobank/TechnischeImplementierung/CapabilityStatement.page.md` | 2 | 0 | 85 | 3 merge into agreed page | capability-statements.md | semantic match 'capabilitystatement' -> capability-statements (routing-table) |
| 14 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Index.page.md` | 3 | 4 | 111 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulBiobank/TechnischeImplementierung/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 4 child page(s) |
| 15 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/SubstanceAdditiv.page.md` | 3 | 0 | 134 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-biobank-substance-additiv-intro.md | compact match on mii-pr-biobank-substance-additiv (2 candidate artefacts) |
| 16 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Organization/Index.page.md` | 4 | 1 | 246 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 1 child page(s) |
| 17 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Organization/Extensions.page.md` | 4 | 0 | 54 | 3 merge into agreed page | extensions.md | agreed page named 'extensions' exists in the target |
| 18 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/Index.page.md` | 4 | 3 | 214 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 3 children, 2 anchoring distinct artefacts (StructureDefinition) |
| 19 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/Extensions.page.md` | 4 | 0 | 154 | 3 merge into agreed page | extensions.md | agreed page named 'extensions' exists in the target |
| 20 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/DNAKonzentration.page.md` | 4 | 0 | 124 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-biobank-observation-dna-konzentration-intro.md | compact match on mii-pr-biobank-observation-dna-konzentration (1 candidate artefact) |
| 21 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/Qualitaetspruefung.page.md` | 4 | 0 | 135 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-biobank-observation-qualitaetspruefung-intro.md | compact match on mii-pr-biobank-observation-qualitaetspruefung (1 candidate artefact) |
| 22 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Index.page.md` | 4 | 8 | 180 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 8 children, 4 anchoring distinct artefacts (StructureDefinition) |
| 23 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Extensions.page.md` | 4 | 0 | 40 | 3 merge into agreed page | extensions.md | agreed page named 'extensions' exists in the target |
| 24 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Karyotyp.page.md` | 4 | 0 | 124 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-biobank-observation-karyotyp-intro.md | compact match on mii-pr-biobank-observation-karyotyp (2 candidate artefacts) |
| 25 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Morphologie.page.md` | 4 | 0 | 124 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-biobank-observation-morphologie-intro.md | compact match on mii-pr-biobank-observation-morphologie (1 candidate artefact) |
| 26 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Wachstumstyp.page.md` | 4 | 0 | 124 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-biobank-observation-wachstumstyp-intro.md | compact match on mii-pr-biobank-observation-wachstumstyp (2 candidate artefacts) |
| 27 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Proliferation.page.md` | 4 | 0 | 124 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-biobank-observation-proliferation-intro.md | compact match on mii-pr-biobank-observation-proliferation (2 candidate artefacts) |
| 28 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Mutationen.page.md` | 4 | 0 | 64 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Index.page.md (no anchor of its own) |
| 29 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Kulturbedingungen.page.md` | 4 | 0 | 87 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Index.page.md (no anchor of its own) |
| 30 | `MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Phenotyp.page.md` | 4 | 0 | 53 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Index.page.md (no anchor of its own) |

Branch totals: 1 intro-note = 7, 2 section on index page = 5, 3 merge into agreed page = 13, 4 own page = 5.

## 5. Report queue 1 items

The menu budget forced a ToC-nesting where a menu entry was otherwise warranted. Allocation below is first-come-first-served in source document order; the human may spend the budget differently.

- MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/Index.page.md - nested under MIIIGModulBiobank/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/index.page.md - nested under MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulBiobank/TechnischeImplementierung/Index.page.md - nested under MIIIGModulBiobank/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Index.page.md - nested under MIIIGModulBiobank/TechnischeImplementierung/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Organization/Index.page.md - nested under MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.

Size-gate trips (rule 5) needing a routing re-run or a split:

- `rendering-artifacts.md` - 3933 words > 2500.

## 6. Suggested `5.4c page-routing` run-log lines

One per source page (union pages included), ready for the migration run log. The `5.4c page-routing` step IS the advice run that GENERATES the page map (`--map`) - the map is machine-written, never hand-written; these lines are only its run-log form.

```
5.4c page-routing	MIIIGModulBiobank/Index.page.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	MIIIGModulBiobank/Release-Notes.page.md	branch=3	changes.md	semantic match 'releasenotes' -> changes (routing-table)
5.4c page-routing	MIIIGModulBiobank/BeschreibungModul.page.md	branch=3	index.md	semantic match 'beschreibungmodul' -> index (routing-table)
5.4c page-routing	MIIIGModulBiobank/KontextimGesamtprojektBezgezuanderenModulen.page.md	branch=3	implementer-guidance.md	semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulBiobank/Referenzen.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulBiobank/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 4 child page(s)
5.4c page-routing	MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md	branch=3	guidance.md	semantic match 'szenarien' -> guidance (routing-table)
5.4c page-routing	MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/DatensaetzeinklBeschreibungen.page.md	branch=3	logical-models.md	semantic match 'datensaetze' -> logical-models (routing-table)
5.4c page-routing	MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/UML.page.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/index.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulBiobank/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/Terminologien.page.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/CapabilityStatement.page.md	branch=3	capability-statements.md	semantic match 'capabilitystatement' -> capability-statements (routing-table)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulBiobank/TechnischeImplementierung/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 4 child page(s)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/SubstanceAdditiv.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-biobank-substance-additiv-intro.md	compact match on mii-pr-biobank-substance-additiv (2 candidate artefacts)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Organization/Index.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 1 child page(s)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Organization/Extensions.page.md	branch=3	extensions.md	agreed page named 'extensions' exists in the target
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/Index.page.md	branch=2	h3/h4 section on profiles.md	3 children, 2 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/Extensions.page.md	branch=3	extensions.md	agreed page named 'extensions' exists in the target
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/DNAKonzentration.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-biobank-observation-dna-konzentration-intro.md	compact match on mii-pr-biobank-observation-dna-konzentration (1 candidate artefact)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/Qualitaetspruefung.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-biobank-observation-qualitaetspruefung-intro.md	compact match on mii-pr-biobank-observation-qualitaetspruefung (1 candidate artefact)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Index.page.md	branch=2	h3/h4 section on profiles.md	8 children, 4 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Extensions.page.md	branch=3	extensions.md	agreed page named 'extensions' exists in the target
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Karyotyp.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-biobank-observation-karyotyp-intro.md	compact match on mii-pr-biobank-observation-karyotyp (2 candidate artefacts)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Morphologie.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-biobank-observation-morphologie-intro.md	compact match on mii-pr-biobank-observation-morphologie (1 candidate artefact)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Wachstumstyp.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-biobank-observation-wachstumstyp-intro.md	compact match on mii-pr-biobank-observation-wachstumstyp (2 candidate artefacts)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Proliferation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-biobank-observation-proliferation-intro.md	compact match on mii-pr-biobank-observation-proliferation (2 candidate artefacts)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Mutationen.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Kulturbedingungen.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Phenotyp.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/ZelllinieOrganoid/Index.page.md (no anchor of its own)
5.4c page-routing	map rows=30 retired=0 coverage=ok	map=migration-log/page-map.tsv
```

## 7. Page map (v2) and coverage

The page map is the CONTRACT of the narrative migration: this run generates and validates it, step 5 consumes ONLY it, step 8 checks against it. Columns: `source_page`, `target` (repo-relative path or `RETIRED`), `reason`, `branch` (spec 9e 1-4; 5 = RETIRED), `measure`. One row per page of the source page universe - the authoritative guide tree UNION `input/pagecontent` UNION on-disk pages no toc lists.

Rows: **30** total - 30 routed source pages (30 from the primary tree, 0 union pages outside it) and 0 RETIRED guide-tree summary row(s).

### 7.3 Coverage validation

Universe re-derived from disk: **29** page(s). Every one needs a row with a non-empty target; every RETIRED row needs a reason. The exit code reports the result (0 covered, 1 not).

**Covered.** All 29 universe pages have a target row; every RETIRED row carries a reason.

## 8. M9 optional-page / other-bucket proposal (Gate 0 census)

Counts: generated_crosscheck.counts (fsh-generated/resources). Rule (spec 9a): count 0 -> REMOVE the optional page, count > 0 -> KEEP and fill it; artefacts are never deleted to force a removal. Each proposal is a `5.4a` run-log line and a HUMAN decision - this table only measures.

| Optional page | Census key | Count | Proposal |
| --- | --- | ---: | --- |
| `extensions.md` | `extensions` | 11 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `search-parameters.md` | `searchparameters` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `operations.md` | `operations` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `value-sets.md` | `valuesets` | 12 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `code-systems.md` | `codesystems` | 2 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `researcher-guidance.md` | - | - | no artefact count decides it - source narrative does (human decision) |
| `metadata.md` | - | - | no artefact count decides it - source narrative does (human decision) |

Artefact types in the census's OTHER bucket - each has NO template page and needs its own named placement (its own `5.4a` line; a type nobody placed is a queue-1 item):

| `artifacts.other` type | Count | Proposed placement |
| --- | ---: | --- |
| ConceptMap | 4 | h3/h4 section on `artifacts.md` |

Declared-vs-generated mismatches Gate 0 reports (2) - the GENERATED counts above are the authoritative ones: `examples` 25->21, `other:ConceptMap` 0->4.

