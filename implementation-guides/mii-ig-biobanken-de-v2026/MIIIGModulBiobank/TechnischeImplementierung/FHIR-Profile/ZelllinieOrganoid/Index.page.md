---
parent:
topic: Specimen Zellinie Organoid
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-zellinie-organoid
---

## Specimen (Zellinie/Organoid)

Mittels der Specimen-Ressource können neben der Biorprobe auch Zellinien und Organoide abgebildet werden. Vom Modell her handelt es sich dabei um eine Erweiterung des Biorpben-Profiles um spezifische Felder miteles Exensions sowie das Specimen referenzierenden Observations. Welche Extensions und/oder Observations dabei passend sind hängt vom jeweiligen Anwendungsfall ab. 

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-zellinie-organoid'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-zellinie-organoid'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-zellinie-organoid'
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
    for differential.element where id.contains('Bioprobe')
    select
        FHIR: mapping[0].map,
        Datensatz: path,
        Erklaerung: definition
```
---

**Suchparameter**


Folgende Suchparameter sind für das Modul Biobank relevant, auch in Kombination:

@``` from CapabilityStatement where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CapabilityStatement/metadata' for rest.resource.where(type='Specimen').searchParam select Name: name, Definition: definition, Type: type, Expectation: extension.where(url='http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value.ofType(code)
```

---