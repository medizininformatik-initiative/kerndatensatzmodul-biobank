# Proliferation Organoid Lungenbiopsie - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Proliferation Organoid Lungenbiopsie**

## Beispiel Observation: Proliferation Organoid Lungenbiopsie

-------

**German**

-------

Profile: [MII PR Biobank Observation Proliferation](StructureDefinition-mii-pr-biobank-observation-proliferation.md)

**status**: Final

**code**: cell population proliferation

**focus**: [Specimen: extension = ->DocumentReference: status = current; date = 2018-06-20 09:00:00+0100; description = Standardprotokoll zur Kultivierung von Lungentumor-Organoiden,,3; identifier = https://biobank.uk-musterstadt.de/fhir/sid/proben#6789-ORG-1; status = available; type = Specimen (specimen)](Specimen-OrganoidLunge.md)

**effective**: 2018-07-05 10:00:00+0100

**value**: viable



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ProliferationOrganoidLunge",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-proliferation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://purl.obolibrary.org/obo/go.owl",
      "code" : "GO:0008283",
      "display" : "cell population proliferation"
    }]
  },
  "focus" : [{
    "reference" : "Specimen/OrganoidLunge"
  }],
  "effectiveDateTime" : "2018-07-05T10:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://purl.obolibrary.org/obo/pato.owl",
      "code" : "PATO:0000719",
      "display" : "viable"
    }]
  }
}

```
