# Karyotyp Organoid Lungenbiopsie - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Karyotyp Organoid Lungenbiopsie**

## Beispiel Observation: Karyotyp Organoid Lungenbiopsie

-------

**German**

-------

Profile: [MII PR Biobank Observation Karyotyp](StructureDefinition-mii-pr-biobank-observation-karyotyp.md)

**status**: Final

**code**: Karyotype (cell structure)

**focus**: [Specimen: extension = ->DocumentReference: status = current; date = 2018-06-20 09:00:00+0100; description = Standardprotokoll zur Kultivierung von Lungentumor-Organoiden,,3; identifier = https://biobank.uk-musterstadt.de/fhir/sid/proben#6789-ORG-1; status = available; type = Specimen (specimen)](Specimen-OrganoidLunge.md)

**effective**: 2018-07-01 10:00:00+0100

**value**: Karyotype 46, XX



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "KaryotypOrganoidLunge",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-karyotyp"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "734840008",
      "display" : "Karyotype (cell structure)"
    }]
  },
  "focus" : [{
    "reference" : "Specimen/OrganoidLunge"
  }],
  "effectiveDateTime" : "2018-07-01T10:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "734875008",
      "display" : "Karyotype 46, XX"
    }]
  }
}

```
