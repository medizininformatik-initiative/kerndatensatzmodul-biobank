---
parent:
topic: Substance Additiv
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
---

## Substance (Additiv)

Mittels einer Substance wird ein Additv abgebildet.

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance'
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
<br>

| FHIR Element | 
|--------------|
| code | 

<br>

| FHIR  | Datensatz | Erklärung |
|--------------|-----------|-----------|
| code | Biobank.Bioprobe.Primaercontainer.Additiv / Biobank.Bioprobe.Verarbeitungsprozess.Additiv | Code des Zusatzstoffes, bevorzugt in SNOMED CT. |

---

**Beispiel**

{{json:medizininformatikinitiative-modulbiobank/heparin}}

