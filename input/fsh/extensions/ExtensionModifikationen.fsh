Extension: ExtensionModifikationen
Id: cell-line-modification
Title: "Zelllinien-Modifikation Extension"
Description: "Erweiterung zur Beschreibung von Modifikationen an Zelllinien, einschließlich Art der Modifikation, Zielgen und Referenz zum Protokoll."

* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40

* extension contains
    artDerModifikation 0..1 MS and
    zielGen 0..1 MS and
    protokoll 0..1 MS

* extension[artDerModifikation].value[x] only CodeableConcept
* extension[artDerModifikation].value[x] from MII_VS_Biobank_Cellline_Modification_CLO (required)

* extension[zielGen].value[x] only Coding
* extension[zielGen].valueCoding.system = "http://www.genenames.org"

* extension[protokoll].value[x] only Reference(DocumentReference)