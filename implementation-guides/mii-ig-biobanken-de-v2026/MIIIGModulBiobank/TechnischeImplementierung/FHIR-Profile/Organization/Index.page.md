## Organization (Sammlung/Biobank)

Mittels einer Organization wird eine Sammlung/Biobank abgebildet.

Canonical: 
```https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization```


**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization, diff}}

<br>

| FHIR Element | Erklärung |
|--------------|-----------|
| extension.beschreibung | Beschreibung der Sammlung/Biobank als Freitext |
| identifier | Unterstützung beliebiger IDs sowie max. einer BBMRI-ERIC-ID |
| type | Angabe zum Typ der Sammlung nach den Vorgaben des BBMRI-ERIC-Directories sofern vorhanden, weitere Codes erlaubt |
| name | Name der Sammlung/Biobank |
| alias | Hier kann u.a. ein Akronym angegeben werden |
| partOf | Zuordung zu einer übergeordneten Sammlung/Biobank |
| contact | Angabe einer Ansprechperson bei Anfragen zu Proben der Sammlung/Biobank |
| contact.extension.rolle | Rolle der Person in der Biobank |
| contact.name | Name der Ansprechperson |
| contact.name.family | Familienname der Ansprechperson |
| contact.name.given | Vorname(n) der Ansprechperson |
| contact.telecom\[email\] | E-Mailadresse der Ansprechperson |
| contact.address | Post und/oder physische Adresse der Ansprechperson |


<br>

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| extension.beschreibung | Biobank.Beschreibung |
| identifier       | Biobank.Probensammlung - Biobank.Sammlungs-ID       |
| identifier[bbmri-eric-id]       | Biobank.Probensammlung - Biobank.BBMRI-ERIC-ID        |
| type       | Biobank.Probensammlung - Biobank.Sammlungstyp |
| name       | Biobank.Probensammlung - Biobank.Name |
| alias       | Biobank.Probensammlung - Biobank.Akronym|
| partOf       | Biobank.Probensammlung - Biobank.besteht aus|
| contact[forschungskontakt] | Biobank.Kontakt |
| contact[forschungskontakt].extension.rolle | Biobank.Kontakt.Rolle |
| contact[forschungskontakt].name.family | Biobank.Kontakt.Nachname |
| contact[forschungskontakt].name.given | Biobank.Kontakt.Vorname |
| contact[forschungskontakt].telecom[email] | Biobank.Kontakt.E-Mail |
| contact[forschungskontakt].address | Biobank.Kontakt.Adresse |


---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization, snapshot}}


---

**Beispiele**

Beispiel Biobank:

{{json:medizininformatikinitiative-modulbiobank/biobankmusterstadt}}

Beispiel Sammlung:


{{json:medizininformatikinitiative-modulbiobank/mustersammlung}}


