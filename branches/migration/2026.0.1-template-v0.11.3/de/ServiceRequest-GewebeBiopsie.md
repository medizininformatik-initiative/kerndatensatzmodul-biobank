# Needle Biopsy Lung - Biobank - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Needle Biopsy Lung - Biobank**

## Beispiel ServiceRequest: Needle Biopsy Lung - Biobank

-------

**German**

-------

**status**: Completed

**intent**: Order

**code**: Needle biopsy of lung (procedure)

**subject**: [Patient/mii-exa-test-data-patient-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/mii-exa-test-data-patient-1)

**authoredOn**: 2018-06-08 15:30:00+0100

**note**: 

> 

ServiceRequest zur Entnahme einer Lungenbiopsie für ein Organoid




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "GewebeBiopsie",
  "status" : "completed",
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "274319000",
      "display" : "Needle biopsy of lung (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "authoredOn" : "2018-06-08T15:30:00+01:00",
  "note" : [{
    "text" : "ServiceRequest zur Entnahme einer Lungenbiopsie für ein Organoid"
  }]
}

```
