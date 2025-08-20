Profile: ProfileSpecimenZellinieOrganoid
Parent: ProfileSpecimenBioprobe
Id: ZellinieOrganoid
Title: "Profile - Specimen - ZellinieOrganoid"
Description: "Abbildung einer MII Zellinie oder Organiods"

* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40

//Bioprobe

* extension contains ExtensionKulturprotokoll named kulturprotokoll 0..1 MS 
                    and ExtensionAnzahlAliqouts named anzahlAliquots 0..1 MS 
                    and ExtensionModifikationen named modifikationen 0..* MS
                    and ExtensionAnzahlPassagen named anzahlPassagen 0..1 MS