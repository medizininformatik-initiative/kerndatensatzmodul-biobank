## SPREC im Kerndatensatz

Wie auf der Seite [Referenzen](/MIIIGModulBiobank-Referenzen.html) erklärt, ist der SPREC nicht direkt im Kerndatensatzmodul enthalten, aber alle ihm zugrunde liegenden Informationen. Diese Seite dokumentiert, wo sich welche Aspekte in der FHIR Umsetzung wiederfinden lassen. Die Tabelle unterscheidet hier nicht zwischen Flüssig- und Gewebeproben, gleichlautende Attribute sind für beide zusammengefasst.

|SPREC |KDS FHIR Path |Mapping Info|
|---|---|---|
|Type of sample| Specimen.type | siehe auch [ConceptMap](https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/mii-cm-biobank-sample-type-sprec-sct) |
|Type of primary container| Specimen.container.type + Specimen.container.additive | siehe auch [ConceptMap](https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/mii-cm-biobank-primary-container-sprec-sct) |
|Precentrifugation| Specimen.processing:lagerprozess.extension:temperaturbedingungen + Specimen.processing:lagerprozess.timePeriod ||
|Centrifugation| Specimen.processing.procedure + Specimen.processing.extension:temperaturbedingungen + Specimen.processing.timePeriod ||
|Second centrifugation| Specimen.processing.procedure + Specimen.processing.extension:temperaturbedingungen + Specimen.processing.timePeriod ||
|Postcentrifugation delay| Specimen.processing:lagerprozess.extension:temperaturbedingungen + Specimen.processing:lagerprozess.timePeriod ||
|Long-term storage| Specimen.processing:lagerprozess.extension:temperaturbedingungen + Specimen.container.type + Specimen.container.capacity | siehe auch [ConceptMap](https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/mii-cm-biobank-long-term-storage-sprec-sct) |
|Type of collection| Specimen.collection.method ||
|Warm ischemia time| Specimen.collection.extension:einstellungBlutversorgung + Specimen.collection.collectedDateTime | Berechung aus zwei konkreten Zeitangaben. |
|Cold ischemia time| Specimen.processing:lagerprozess.timePeriod | Der Transport einer Gewebeprobe kann als Lagerprozess bei Raumtemperatur modelliert werden. |
|Fixation/stabilization type| Specimen.processing.type + Specimen.processing.additive | siehe auch [ConceptMap](https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/mii-cm-biobank-fixation-type-sprec-sct) |
|Fixation time| Specimen.processing.timePeriod | |