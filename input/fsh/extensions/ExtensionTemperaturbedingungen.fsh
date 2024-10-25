Extension: ExtensionTemperaturbedingungen
Id: Temperaturbedingungen
Title: "Extension - Temperaturbedingungen"
Description: "Um zu einer Verabeitung oder Lagerung die jeweils herrschenden Temperaturbedingungen (in °C) anzugeben soll diese Extension verwendet werden. Dabei soll nach Möglichkeit immer ein Wertebereich inkl. oberer und unterer Grenze angegeben werden."

* insert PR_CS_VS_Version

* value[x] only Range
* valueRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* valueRange.low ^patternQuantity.code = #Cel
* valueRange.low ^patternQuantity.unit = "°C"
* valueRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* valueRange.high ^patternQuantity.code = #Cel
* valueRange.high ^patternQuantity.unit = "°C"
