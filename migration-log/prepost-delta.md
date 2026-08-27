# Pre/post delta — the two ig-stats measurements compared

| Side | Measurement |
|---|---|
| pre | preflight-analysis.json (biobank-source, ec18029, 2026-08-27T16:46:01Z) |
| post | postflight-analysis.json (biobank-migrated, 13508a4, 2026-08-27T17:29:55Z) |

Verdicts: **unchanged** 23 · **improved** 1 · **expected-change** 4 · **REGRESSION** 2 · **not-measurable** 4.

## ⛔ Regressions — properties that got WORSE

Each one blocks the migration until it is fixed or explained; an explanation belongs in the migration report, not in a merge commit.

- **`identity.name`**: `de.medizininformatikinitiative.kerndatensatz.biobank` → `MII_IG_Biobank_DE` — machine-identity field changed -- the migrated package is no longer the same package
- **`narrative_sources.dual_source`**: `false` → `true` — the migration introduced a SECOND narrative source tree -- two trees is how the wrong one gets edited

## Identity

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `identity.id` | - | mii-ig-biobank-de-v2026 | not-measurable | the field is absent from the pre measurement |
| `identity.canonical` | https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank | https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank | unchanged |  |
| `identity.packageId` | de.medizininformatikinitiative.kerndatensatz.biobank | de.medizininformatikinitiative.kerndatensatz.biobank | unchanged |  |
| `identity.name` | de.medizininformatikinitiative.kerndatensatz.biobank | MII_IG_Biobank_DE | **REGRESSION** | machine-identity field changed -- the migrated package is no longer the same package |
| `identity.version` | 2026.0.1 | 2026.0.1 | unchanged |  |
| `identity.fhirVersion` | 4.0.1 | 4.0.1 | unchanged |  |
| `identity.license` | - | CC-BY-4.0 | not-measurable | the field is absent from the pre measurement |
| `identity.calver` | true | true | unchanged |  |
| `identity.publisher` | - | Medizininformatik Initiative | not-measurable | the field is absent from the pre measurement |
| `identity.status` | active | active | unchanged |  |
| `identity.title` | - | MII IG Kerndatensatz-Modul Biobank | not-measurable | the field is absent from the pre measurement |

## Preflight flags

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `licence.contradictory` | false | false | unchanged |  |
| `dependency_health.injection_risk` | true | false | improved | the dependency-injection risk the source carried is cleared |
| `narrative_sources.dual_source` | false | true | **REGRESSION** | the migration introduced a SECOND narrative source tree -- two trees is how the wrong one gets edited |

## Artefact counts

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `mode` | static | static | unchanged |  |
| `artifacts.profiles` | 11 | 11 | unchanged |  |
| `artifacts.extensions` | 11 | 11 | unchanged |  |
| `artifacts.valuesets` | 12 | 12 | unchanged |  |
| `artifacts.codesystems` | 2 | 2 | unchanged |  |
| `artifacts.logicals` | 1 | 1 | unchanged |  |
| `artifacts.capabilitystatements` | 1 | 1 | unchanged |  |
| `artifacts.questionnaires` | 0 | 0 | unchanged |  |
| `artifacts.searchparameters` | 0 | 0 | unchanged |  |
| `artifacts.operations` | 0 | 0 | unchanged |  |
| `artifacts.examples` | 25 | 25 | unchanged |  |
| `artifacts.rulesets` | 24 | 65 | expected-change | the count rose by 41 -- artefacts added by the migration; the report names what and why |
| `artifacts.invariants` | 1 | 1 | unchanged |  |
| `artifacts.mappings` | 1 | 1 | unchanged |  |
| `artifacts.other_total` | 0 | 0 | unchanged |  |
| `artifacts.total` | 63 | 63 | unchanged |  |

## Narrative pages

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `narrative.pages` | 27 | 47 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.intro_note_pages` | 0 | 8 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.translation_pages` | 0 | 20 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |

## Directives

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `directives.total` | 202 | 202 | unchanged |  |

