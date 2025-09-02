Instance: mii-sp-biobank-specimen-art-der-modifikation
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Art_Der_Modifikation"
* status = #active
* description = "Search specimens by artDerModifikation in the mii_ex_biobank_modifikationen extension (Coding)"
* code = #art-der-modifikation
* base = #Specimen
* type = #token
* expression = "Specimen.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii_ex_biobank_modifikationen').extension.where(url='artDerModifikation').value.as(Coding)"

Instance: mii-sp-biobank-specimen-zielgen
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Zielgen"
* status = #active
* description = "Search specimens by zielgen in the mii_ex_biobank_modifikationen extension (string)"
* code = #zielgen
* base = #Specimen
* type = #string
* expression = "Specimen.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii_ex_biobank_modifikationen').extension.where(url='zielgen').value"

Instance: mii-sp-biobank-specimen-modifikationen
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile

* name = "MII_SP_Biobank_Specimen_Modifikationen"
* status = #active
* description = "Composite search parameter for specimens based on artDerModifikation and zielgen in mii_ex_biobank_modifikationen extension"
* code = #modifikationen
* base = #Specimen
* type = #composite
* expression = "extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii_ex_biobank_modifikationen')"
* component[+].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-art-der-modifikation"
* component[=].expression = "extension.where(url='artDerModifikation').value"
* component[+].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-zielgen"
* component[=].expression = "extension.where(url='zielgen').value"
