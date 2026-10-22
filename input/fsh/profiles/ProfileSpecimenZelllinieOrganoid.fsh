//Head
Profile: MII_PR_Biobank_Specimen_Zelllinie_Organoid
Parent: MII_PR_Biobank_Specimen_Bioprobe
Id: mii-pr-biobank-zelllinie-organoid
Title: "MII PR Biobank Specimen Zelllinie Organoid"
Description: "Abbildung einer MII Zelllinie oder eines Organoids"

//Translation Meta
* insert Translation(^name, en-US, MII_PR_Biobank_Specimen_Cellline_Organoid)
* insert Translation(^title, de-DE, Specimen Zelllinie Organoid)
* insert Translation(^title, en-US, Specimen Cell Line Organoid)
* insert Translation(^description, de-DE, Abbildung einer MII Zelllinie oder eines Organoids)
* insert Translation(^description, en-US, Representation of a MII cell line or organoid)

//Meta
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert Publisher
* insert LicenseCodeableCCBY40
* id MS
* meta MS
* meta.source MS
* meta.profile MS

//Bioprobe

* extension contains MII_EX_Biobank_Kulturprotokoll named kulturprotokoll 0..1 MS 
                    and MII_EX_Biobank_Modifikationen named modifikationen 0..* MS
                    and MII_EX_Biobank_Anzahl_Passagen named anzahlPassagen 0..1 MS