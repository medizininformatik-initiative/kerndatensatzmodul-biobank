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