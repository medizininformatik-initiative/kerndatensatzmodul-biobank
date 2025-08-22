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

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| extension.diagnose | Biobank.Bioprobe.Diagnose |
| extension.gehoertZu | Biobank.Bioprobe.gehoert zu |
| identifier | Biobank.Bioprobe.Proben-ID |
| status | Biobank.Bioprobe.Verfügbarkeitsstatus |
| type | Biobank.Bioprobe.Probenart |
| parent | Biobank.Bioprobe.Ist gewonnen aus |
| request | Biobank.Bioprobe.Probenentnahme.Entnahme-ID |
| collection.extension.einstellungBlutversorgung | Biobank.Bioprobe.Probenentnahme.Einstellung Blutversorgung |
| collection.collected[x] | Biobank.Bioprobe.Probenentnahme.Entnahmezeitpunkt |
| collection.bodySite | Biobank.Bioprobe.Probenentnahme.Entnahmestelle |
| collection.fastingStatusCodeableConcept | Biobank.Bioprobe.Probenentnahme.Nuechternstatus  / Biobank.Bioprobe.Probenentnahme.Nuechternstatus Dauer |
| processing | Biobank.Bioprobe.Verarbeitungsprozess |
| processing.extension.temperaturbedingungen | Biobank.Bioprobe.Verarbeitungsprozess.Temperatur |
| processing.procedure | Biobank.Bioprobe.Verarbeitungsprozess.Verarbeitungstyp / Biobank.Bioprobe.Verarbeitungsprozess.Modus |
| processing.additive | Biobank.Bioprobe.Verarbeitungsprozess.Verwendung Additive |
| prcessing.timePeriod.start | Biobank.Bioprobe.Verarbeitungsprozess.Startzeitpunkt / Bioprobe.Lagerprozess.Einfrierzeitpunkt |
| prcessing.timePeriod.end | Biobank.Bioprobe.Verarbeitungsprozess.Endzeitpunkt Biobank.Bioprobe.Lagerprozess.Auftauzeitpunkt |
| container.type | Biobank.Bioprobe.Primaercontainer.Containertyp |
| container.capacity | Biobank.Bioprobe.Primaercontainer.Kapazitaet |
| container.specimenQuantity | Biobank.Bioprobe.Probenmenge |
| container.additive  | Biobank.Bioprobe.Primaercontainer.Verwendung Additiv |
| note | Biobank.Bioprobe.Projektverwendung / Biobank.Bioprobe.Sonstige Eigenschaften |

---

**Beispiele**

Beispiel Gewebeprobe:

{{json:medizininformatikinitiative-modulbiobank/musterprobegewebe}}

Beispiel Flüssigprobe:

{{json:medizininformatikinitiative-modulbiobank/musterprobefluessig}}
