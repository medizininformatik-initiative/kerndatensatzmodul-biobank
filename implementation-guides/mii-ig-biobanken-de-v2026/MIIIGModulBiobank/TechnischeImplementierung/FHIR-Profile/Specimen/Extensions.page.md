#### Extensions


##### Temperaturbedingungen

Um zu einer Verabeitung oder Lagerung die jeweils herrschenden Temperaturbedingungen (in °C) anzugeben soll diese Extension verwendet werden. Dabei soll nach Möglichkeit immer ein Wertebereich inkl. oberer und unterer Grenze angegeben werden.

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen}}


##### Einstellung Blutversorgung

Zeitpunkt der Einstellung der Bluversorgung während der Entnahme. Wird z.B. für die Berechnung der kalten bzw. warmen Ischämiezeiten benötigt.

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung}}

##### Verwaltende Organisation

Die Organisation, die die Probe verwaltet, soll mithilfe dieser Extension referenziert werden. Anfragen zu den Proben sollen mittels dieser Verlinkung und den in der Organization hinterlegten Kontaktinformationen möglich sein.

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation}}



##### Diagnose

Mittels dieser Extension kann eine zur Probe gehörende Diagnose referenziert werden. Dies ist vor allem für Fälle gedacht, wo eine Zuordnung über Pathologiebericht oder Laborbefund nicht möglich ist.

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose}}
