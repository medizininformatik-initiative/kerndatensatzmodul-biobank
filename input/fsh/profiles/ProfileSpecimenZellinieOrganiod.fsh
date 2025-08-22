Profile: ProfileSpecimenZellinieOrganoid
Parent: ProfileSpecimenBioprobe
Id: ZellinieOrganoid
Title: "Profile - Specimen - ZellinieOrganoid"
Description: "Abbildung einer MII Zellinie oder Organiods"

* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40

//Bioprobe

* extension contains MII_EX_Biobank_Kulturprotokoll named kulturprotokoll 0..1 MS 
                    and MII_EX_Biobank_Modifikationen named modifikationen 0..* MS
                    and MII_EX_Biobank_Anzahl_Passagen named anzahlPassagen 0..1 MS