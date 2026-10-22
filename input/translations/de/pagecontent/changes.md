<!-- markdownlint-disable MD041 -->
### Version 2027.0.0-ballot

Abhängigkeiten:

* MIABIS-Abhängigkeit auf 1.3.0 aktualisiert. **Inkompatible Änderung:** MIABIS hat alle kanonischen URLs geändert; betroffen sind die hier genutzten MIABIS-Extensions sowie die System-URLs der Temperatur- und Probenmaterial-Codes.

Korrekturen:

* Profil-Id `mii-pr-biobank-zellinie-organoid` in `mii-pr-biobank-zelllinie-organoid` umbenannt (Tippfehler). **Inkompatible Änderung:** Die kanonische URL des Zelllinien-/Organoid-Profils ändert sich entsprechend.
* Elemente des logischen Modells umbenannt: `Anzahl-Aliquots` → `Anzahl-Aliquots`, `Auslagerungszeitpunkt` → `Auslagerungszeitpunkt`, `Kulturbedingungen` → `Kulturbedingungen` (Tippfehler).
* Tippfehler in Titeln, Beschreibungen und Displays korrigiert; der englische Titel der Infektiositäts-Extension lautet jetzt „Infectivity Status".

### Version 2027.0.0-ballot.rc2

Paket-Reparatur (inhaltlich wie rc1):

* Package rc1 enthielt leere Snapshots (Specimen/SpecimenCore) und keinen THO-Pin — Neubau mit korrekter Auflösung
* `caseSensitive = true` für beide CodeSysteme
* CLO:0037375-Display korrigiert („derives from cell with knockout gene")

### Version 2027.0.0-ballot.rc1

Neu:

* Hinzufügen einer Extension für Specimen zur Angabe des Infektiositätsstatus
* Hinzufügen der Specimen.focus-Extension aus dem EU Lab IG

### Version 2026.0.1

Korrekturen:

* Fix eines Problems mit der Kardinalität der Extensions in `Specimen.processing`

### Version 2026.0.0

Umsetzung der Kommentare zur Ballotierung:

* `collection.method` MS
* `container 1..`
* MS und 1..1 jetzt konsistent und für alle Codings/Quantities auf `system` und `code`
* Einige Slicing-Fixes

Suchparameter jetzt im meta-Package.

### Version 2026.0.0-ballot

In der neuen Version des KDS-Moduls Biobank / Bioprobendaten gibt es einige Ergänzungen am Specimen. Insbesondere wurden Aspekte der MIABIS-on-FHIR-Modellierung (zunächst optional) übernommen, um hier Kompatibilität zu erzeugen. Ebenfalls durch MIABIS on FHIR beeinflusst, gibt es Änderungen am Profil Sammlung/Biobank: Hier wurde unter anderem von zuvor im Rahmen des KDS-Moduls definierten Extensions auf MIABIS-Extensions gewechselt.
Auf Specimen-Ebene wurde außerdem ein neues Profil zur Modellierung von Zelllinien/Organoiden mit den dazugehörigen Observations erstellt. Darüber hinaus wurden diverse Änderungen an den Terminologie-Ressourcen vorgenommen, vor allem um Kompatibilität mit der neuesten SPREC-Version (4.0) sicherzustellen. Weiterhin wurde eine Extension eingeführt, um die Probenebene zu kennzeichnen, und Definitionen für dort verwendete Begriffe erarbeitet.
