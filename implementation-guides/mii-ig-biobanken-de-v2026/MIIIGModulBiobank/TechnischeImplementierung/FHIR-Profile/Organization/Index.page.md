---
parent:
topic: Organization Sammlung Biobank
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization
---

## Organization (Sammlung/Biobank)

Mittels einer Organization wird eine Sammlung/Biobank abgebildet. Dies ist eine sehr einfache Umsetzung, die viel Aspekte die z.B. in MIABIS berücksichtigt werden, unterschlägt. Bei einer Umsetzung sollte immer geprüft werden, ob direkt eine Implementierung der [entsprechenden MIABIS on FHIR Profile](https://simplifier.net/guide/MIABIS-on-FHIR/Home/FHIR-Resources/Profiles/Core-components?version=current) erfolgen kann. Dort wird zwischen Biobank(**Biobank**) und Sammlung (**Collection**) unterschieden. Die Collection wird neben der Umsetzung als Organization auch als *Group* modelliert, von der aus die zur Sammlung gehörenden Specimen Ressourcen verlinkt werden. In diesem KDS Modul wird die Relation der EInfachheit halber umgekehrt über die *gehört zu* Extension abgebildet. Diese beiden Ansätze können aber auch gleichzeitig verwendet werden, sodass eine FHIR Implementierung gleichzeitig KDS und MIABIS konform sein kann.

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

**Suchparameter**


Folgende Suchparameter sind für das Modul Biobank relevant, auch in Kombination:

@``` from CapabilityStatement where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CapabilityStatement/metadata' for rest.resource.where(type='Organization').searchParam select Name: name, Definition: definition, Type: type, Expectation: extension.where(url='http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value.ofType(code)
```

---


**Beispiele**

Beispiel Biobank:

{{json:medizininformatikinitiative-modulbiobank/biobankmusterstadt}}

Beispiel Sammlung:


{{json:medizininformatikinitiative-modulbiobank/mustersammlung}}


