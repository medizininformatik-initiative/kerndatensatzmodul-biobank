CodeSystem: MII_CS_Biobank_Probenebene
Id: mii-cs-biobank-probenebene
Title: "MII CS Biobank Probenebene"
Description: "Codes um die Probenebene anzugeben"

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* insert Translation(^name, en-US, MII_CS_Biobank_Specimen_Level)
* insert Translation(^title, en-US, MII CS Biobank Specimen Level)
* insert Translation(^description, en-US, Codes to indicate the level in the Specimen hierarchy)
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40 
* insert PR_CS_VS_Date

* #PRIMÄRPROBE "Primärprobe" "Die Probe, wie sie gesammelt wurde, vor ihrer Verarbeitung."
* #ALIQUOTGRUPPE "Aliquotgruppe" "Eine Zusammenfassung von Aliquots gleichen Probentyps, die von der gleichen möglicherweise bereits verarbeiteten Primärprobe abstammen."
* #ALIQUOT "Aliquot" "Eine Probe, von der identische Geschwisterproben existieren können, die derselben Aliquotgruppe angehören. "
