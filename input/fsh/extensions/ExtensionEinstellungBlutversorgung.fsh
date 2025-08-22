//Head
Extension: MII_EX_Biobank_Einstellung_Blutversorgung
Id: mii-ex-biobank-einstellung-blutversorgung
Title: "MII EX Biobank Einstellung Blutversorgung"
Description: "Zeitpunkt der Einstellung der Bluversorgung während der Entnahme. Wird z.B. für die Berechnung der kalten bzw. warem Ischämiezeiten benötigt."

//Translation
* insert Translation(^name, en-US, MII_EX_Biobank_Blood_Supply_Stop)
* insert Translation(^title, en-US, MII EX Biobank Blood Supply Stop)
* insert Translation(^description, en-US, Time of blood supply cessation during collection. Used for calculating cold and warm ischemia times.)

//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(Specimen.collection)

* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung"

* value[x] only dateTime
