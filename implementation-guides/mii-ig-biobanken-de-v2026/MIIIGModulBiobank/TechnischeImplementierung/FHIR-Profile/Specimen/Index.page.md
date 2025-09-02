---
parent:
topic: Specimen-Bioprobe
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
---

## Specimen (Bioprobe)

Mittels eines Specimen wird eine Bioprobe abgebildet. 

Hinweis: In vielen Kontexten haben die Begriffe Specimen und Sample differenzierte Bedeutungen. Sowohl FHIR als auch SNOMED CT sprechen i.d.R. von Specimen und kennen diese Differenzierung nicht, sie spielt daher im Rahmen der Vorgaben des Modules keine Rolle.

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen'
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

Folgende Invarianten müssen bei der Implementierung des Profils beachtet werden:

**Constraints**: @``` from StructureDefinition where url in ('https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore'|'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen') for differential.element.constraint select key,severity,human, expression```

---

@```
from StructureDefinition
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/LogicalModel/Biobank'
    for differential.element where id.contains('Bioprobe')
    select
        FHIR: mapping[0].map,
        Datensatz: path,
        Erklaerung: definition
```

**Suchparameter**


Folgende Suchparameter sind für das Modul Biobank relevant, auch in Kombination:

@``` from CapabilityStatement where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CapabilityStatement/metadata' for rest.resource.where(type='Specimen').searchParam select Name: name, Definition: definition, Type: type, Expectation: extension.where(url='http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value.ofType(code)
```

---

**Beispiele**

Beispiel Gewebeprobe:

{{json:medizininformatikinitiative-modulbiobank/musterprobegewebe}}

Beispiel Flüssigprobe:

{{json:medizininformatikinitiative-modulbiobank/musterprobefluessig}}

Beispiel Aliqoutgruppe:

{{json:fsh-generated/resources/Specimen-AliquotgruppeBuffyCoat.json}}
