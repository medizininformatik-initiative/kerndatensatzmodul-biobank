## Datensätze inkl. Beschreibungen

Hier befindet sich die offizielle Version des Informationsmodells für das Kerndatensatzmodul Biobank als FHIR Logical Model:

{{tree:mii_lm_biobank}}

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein Mapping auf ein Element einer konkreten FHIR Ressource.


**Weitere Probeneigenschaften**

In einigen Fällen kann es nötig sein, weitere Eigenschaften einer Probe wie z.B. Zellzahlen oder DNA/RNA-Konzentration zu erfassen. In der aktuellen Version des Modules werden dazu keine Vorgaben in Form von FHIR-Profilen gemacht, es wird aber eine Modellierung über die FHIR-Ressource Observation empfohlen. Hier kann die Probe im Feld *specimen* referenziert werden. Als Codes können SNOMED Codes wie *118218001 |Cell count (procedure)|* oder LOINC Codes wie *72496-3 DNA double strand [Mass/volume] in Specimen* verwendet werden. In folgenden Versionen dieses Modules werden hierzu möglicherweise weitere Festlegungen erfolgen.