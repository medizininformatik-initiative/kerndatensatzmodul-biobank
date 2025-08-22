//Head
Extension: MII_EX_Biobank_Ebene
Id: mii-ex-biobank-ebene
Title: "MII EEX Biobank Ebene"
Description: "Mittels dieser Extension kann ausgedrückt werden, welcher Probenebene dieses Specimen zuzuordnen ist."

//Translation
* insert Translation(^name, en-US, MII_EX_Biobank_Level)
* insert Translation(^title, en-US, Extension - Level)
* insert Translation(^description, en-US, This extension allows expressing to which specimen level this specimen is assigned.)

//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(Specimen)

* value[x] only Coding
* valueCoding from ValueSetProbenebene (required)
