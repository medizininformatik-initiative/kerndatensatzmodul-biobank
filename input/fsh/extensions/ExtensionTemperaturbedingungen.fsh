//Head
Extension: MII_EX_Biobank_Temperaturbedingungen
Id: mii-ex-biobank-temperaturbedingungen
Title: "MII EX Biobank Temperaturbedingungen"
Description: "Um zu einer Verabeitung oder Lagerung die jeweils herrschenden Temperaturbedingungen (in °C) anzugeben soll diese Extension verwendet werden. Dabei soll nach Möglichkeit immer ein Wertebereich inkl. oberer und unterer Grenze angegeben werden."

//Translation
* insert Translation(^name, en-US, MII_EX_Biobank_Temperature_Conditions)
* insert Translation(^title, en-US, MII EX Biobank Temperature Conditions)
* insert Translation(^description, en-US, This extension should be used to specify the prevailing temperature conditions in °C during processing or storage. Where possible\, a range including upper and lower limits should always be provided.)


//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(Specimen.processing)

//Url
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"


* value[x] only Range
* valueRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* valueRange.low ^patternQuantity.code = #Cel
* valueRange.low ^patternQuantity.unit = "°C"
* valueRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* valueRange.high ^patternQuantity.code = #Cel
* valueRange.high ^patternQuantity.unit = "°C"
