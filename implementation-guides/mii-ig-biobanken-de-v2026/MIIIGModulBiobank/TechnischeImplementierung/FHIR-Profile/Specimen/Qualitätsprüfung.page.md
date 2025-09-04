---
parent:
topic: Observation Qualitaetspruefung
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung
---

## Observation (Qualitätsprüfung)

Mittels einer Observation werden durchgeführte Qualitätsprüfungen, z.B. Messung der Viabilität, Test auf Mykoplasmen, STR-Analyse, Wiederauftaubarkeit / Wiederinkulturnahme abgebildet.

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung'
select
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung">
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung'
        for
            differential.element
            where
                mustSupport = true
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

**Suchparameter**


Folgende Suchparameter sind für das Modul Biobank relevant, auch in Kombination:

@``` from CapabilityStatement where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CapabilityStatement/metadata' for rest.resource.where(type='Observation').searchParam select Name: name, Definition: definition, Type: type, Expectation: extension.where(url='http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value.ofType(code)
```

---


**Beispiele**

Pass/Fail Check:

{{json:fsh-generated/resources/Observation-QualitaetspruefungBuffyCoat.json}}

Quantitatives Ergebnis:

{{json:fsh-generated/resources/Observation-QualitaetspruefungPlasma.json}}