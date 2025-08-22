---
parent:
topic: Organization Sammlung Biobank
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization
---

## Organization (Sammlung/Biobank)

Mittels einer Organization wird eine Sammlung/Biobank abgebildet.

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization'
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
@```
from StructureDefinition
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/LogicalModel/Biobank'
    for differential.element where id.contains('Probensammlung-Biobank')
    select
        FHIR: mapping[0].map,
        Datensatz: path,
        Erklaerung: definition
```


**Beispiele**

Beispiel Biobank:

{{json:medizininformatikinitiative-modulbiobank/biobankmusterstadt}}

Beispiel Sammlung:


{{json:medizininformatikinitiative-modulbiobank/mustersammlung}}


