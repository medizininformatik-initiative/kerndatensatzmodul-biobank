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
