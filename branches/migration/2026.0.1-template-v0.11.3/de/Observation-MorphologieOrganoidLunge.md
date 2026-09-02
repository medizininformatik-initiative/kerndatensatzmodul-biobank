# Morphologie Organoid Lungenbiopsie - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Morphologie Organoid Lungenbiopsie**

## Beispiel Observation: Morphologie Organoid Lungenbiopsie

-------

**German**

-------

Profile: [MII PR Biobank Observation Morphologie](StructureDefinition-mii-pr-biobank-observation-morphologie.md)

**status**: Final

**code**: cell morphology

**focus**: [Specimen: extension = ->DocumentReference: status = current; date = 2018-06-20 09:00:00+0100; description = Standardprotokoll zur Kultivierung von Lungentumor-Organoiden,,3; identifier = https://biobank.uk-musterstadt.de/fhir/sid/proben#6789-ORG-1; status = available; type = Specimen (specimen)](Specimen-OrganoidLunge.md)

**effective**: 2018-07-06 10:00:00+0100

**value**: Cell structure alteration (morphologic abnormality)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MorphologieOrganoidLunge",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-morphologie"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://purl.obolibrary.org/obo/pato.owl",
      "code" : "PATO:0010006",
      "display" : "cell morphology"
    }]
  },
  "focus" : [{
    "reference" : "Specimen/OrganoidLunge"
  }],
  "effectiveDateTime" : "2018-07-06T10:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "125393006",
      "display" : "Cell structure alteration (morphologic abnormality)"
    }]
  }
}

```
