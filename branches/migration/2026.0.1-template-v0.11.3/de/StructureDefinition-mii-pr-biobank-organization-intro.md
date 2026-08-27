### Inhalt

Mittels einer Organization wird eine Sammlung/Biobank abgebildet. Dies ist eine sehr einfache Umsetzung, die viele Aspekte, die z.B. in MIABIS berücksichtigt werden, unterschlägt. Bei einer Umsetzung sollte immer geprüft werden, ob direkt eine Implementierung der [entsprechenden MIABIS on FHIR Profile](https://simplifier.net/guide/MIABIS-on-FHIR/Home/FHIR-Resources/Profiles/Core-components?version=current) erfolgen kann. Dort wird zwischen Biobank (**Biobank**) und Sammlung (**Collection**) unterschieden. Die Collection wird neben der Umsetzung als Organization auch als *Group* modelliert, von der aus die zur Sammlung gehörenden Specimen-Ressourcen verlinkt werden. In diesem KDS-Modul wird die Relation der Einfachheit halber umgekehrt über die *gehört zu*-Extension abgebildet. Diese beiden Ansätze können aber auch gleichzeitig verwendet werden, sodass eine FHIR-Implementierung gleichzeitig KDS- und MIABIS-konform sein kann.

### Beispiele

* Beispiel Biobank: [Biobank Musterstadt](Organization-BiobankMusterstadt.html)
* Beispiel Sammlung: [Mustersammlung](Organization-Mustersammlung.html)
