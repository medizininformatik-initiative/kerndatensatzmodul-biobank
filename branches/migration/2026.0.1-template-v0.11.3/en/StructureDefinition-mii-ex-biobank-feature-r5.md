# MII EX Biobank Feature R5 - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Biobank Feature R5**

## Extension: MII EX Biobank Feature R5 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature | *Version*:2026.0.1 |
| Active as of 2026-08-28 | *Computable Name*:MII_EX_Biobank_Feature_R5 |

Die Extension ermöglicht es im Specimen das feature aus R5 zu nutzen.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Biobank Specimen Bioprobe Core](StructureDefinition-mii-pr-biobank-specimen-core.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.biobank|current/StructureDefinition/StructureDefinition-mii-ex-biobank-feature-r5.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-biobank-feature-r5.csv), [Excel](../StructureDefinition-mii-ex-biobank-feature-r5.xlsx), [Schematron](../StructureDefinition-mii-ex-biobank-feature-r5.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-biobank-feature-r5",
  "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature",
  "version" : "2026.0.1",
  "name" : "MII_EX_Biobank_Feature_R5",
  "title" : "MII EX Biobank Feature R5",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:38:44+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Die Extension ermöglicht es im Specimen das feature aus R5 zu nutzen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Specimen"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Biobank Feature R5",
      "definition" : "Die Extension ermöglicht es im Specimen das feature aus R5 zu nutzen."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:type",
      "path" : "Extension.extension",
      "sliceName" : "type",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:type.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:type.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "type"
    },
    {
      "id" : "Extension.extension:type.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "Extension.extension:description",
      "path" : "Extension.extension",
      "sliceName" : "description",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:description.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:description.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "description"
    },
    {
      "id" : "Extension.extension:description.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
