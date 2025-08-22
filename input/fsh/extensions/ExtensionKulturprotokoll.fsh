//Head
Extension: MII_EX_Biobank_Kulturprotokoll
Id: mii-ex-biobank-kulturprotokoll
Title: "MII EX Biobank Kulturprotokoll"
Description: "Protokoll der Kultur der Zellinie oder des Organiods."

//Translation
* insert Translation(^name, en-US, MII_EX_Biobank_Culture_Protocol)
* insert Translation(^title, en-US, MII EX Biobank Culture Protocol)
* insert Translation(^description, en-US, Protocol of the culture of the cell line or organoid.)

//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(Specimen)


* value[x] only Reference(DocumentReference)
