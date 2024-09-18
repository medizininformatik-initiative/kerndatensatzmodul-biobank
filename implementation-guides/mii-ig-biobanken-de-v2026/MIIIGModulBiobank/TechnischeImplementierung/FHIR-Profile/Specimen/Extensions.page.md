#### Extensions


##### Temperaturbedingungen

Um zu einer Verabeitung oder Lagerung die jeweils herrschenden Temperaturbedingungen (in °C) anzugeben soll diese Extension verwendet werden. Dabei soll nach Möglichkeit immer ein Wertebereich inkl. oberer und unterer Grenze angegeben werden.

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen}}


##### Einstellung Blutversorgung

Zeitpunkt der Einstellung der Bluversorgung während der Entnahme. Wird z.B. für die Berechnung der kalten bzw. warem Ischämiezeiten benötigt.

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung}}

##### Verwaltende Organisation

Die Organisation, die die Probe verwaltet, soll mithilfe dieser Extension referenziert werden. Anfragen zu den Proben sollen mittels dieser Verlinkung und der in der Organization hinterlegten Kontaktinformationen möglich sein.

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation}}



##### Diagnose

Mittels dieser Extension kann eine zur Probe gehörende Diagnose referenziert werden. Dies ist vor allem für Fälle gedacht, wo eine Zuordnung über Pathologiebericht oder Laborbefund nicht möglich ist.

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose}}

##### Kontrollprobe

Diese Extension kann genutzt werden, um eine Probe als Kontrollprobe zu kennzeichnen. Über einen Code muss dann angeben werden, ob die Probe explizit als Kontrollprobe gesammelt wurde oder (ohne direkten Krankheitsbezug) im Rahmen einer Populationskohorte gewonnen wurde. Sammlungen, die nur Proben aus Populationskohorten enthalten, sollten in der [TODO: MIABIS Modellierung Ressource] im [TODO Feld] ebenfalls als typ Populationskohorte angeben.
