//Head
Extension: MII_EX_Biobank_Verwaltende_Organisation
Id: mii-ex-biobank-verwaltende-organisation
Title: "MII EX Biobank Verwaltende Organisation"
Description: "Die Organisation, die die Probe verwaltet, soll mithilfe dieser Extension referenziert werden. Anfragen zu den Proben sollen mittels dieser Verlinkung und der in der Organization hinterlegten Kontaktinformationen möglich sein."

//Translation
* insert Translation(^name, en-US, MII_EX_Biobank_Managing_Organization)
* insert Translation(^title, en-US, MII EX Biobank Managing Organization)
* insert Translation(^description, en-US, The organization managing the specimen should be referenced using this extension. Requests regarding the specimens should be possible via this link and the contact information stored in the organization.)

//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(Specimen)

//Url
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"


* value[x] only Reference(ProfileOrganizationSammlungBiobank)
