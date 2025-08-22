//Head
Extension: MII_EX_Biobank_Modifikationen
Id: mii-ex-biobank-modifikationen
Title: "MII EX Biobank Zelllinien-Modifikation"
Description: "Erweiterung zur Beschreibung von Modifikationen an Zelllinien, einschließlich Art der Modifikation, Zielgen und Referenz zum Protokoll."

//Translation
* insert Translation(^name, en-US, MII_EX_Biobank_Cell_Line_Modification)
* insert Translation(^title, en-US, MII EX Biobank Cell Line Modification)
* insert Translation(^description, en-US, Extension for describing modifications to cell lines\, including type of modification\, target gene\, and reference to the protocol.)

//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(Specimen)

* extension contains
    artDerModifikation 0..1 MS and
    zielGen 0..1 MS and
    protokoll 0..1 MS

* extension[artDerModifikation].value[x] only CodeableConcept
* extension[artDerModifikation].value[x] from MII_VS_Biobank_Cellline_Modification_CLO (required)

* extension[zielGen].value[x] only Coding
* extension[zielGen].valueCoding.system = "http://www.genenames.org"

* extension[protokoll].value[x] only Reference(DocumentReference)