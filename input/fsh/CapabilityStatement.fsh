RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: Profile (profile, expectation)
* rest.resource[=].profile[+] = "{profile}"
* rest.resource[=].profile[=].extension[0].url = $exp
* rest.resource[=].profile[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

Instance: mii-cps-biobank-capabilitystatement
InstanceOf: CapabilityStatement
Usage: #definition
* insert Version
* insert SP_Publisher
* insert Date
* insert LicenseCodeableCCBY40Instance
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CapabilityStatement/metadata"
* name = "MII_CPS_Biobank_CapabilityStatement"
* title = "MII CPS Biobank CapabilityStatement"
* status = #active
* experimental = false
* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Biobank der Medizininformatik Initiative zu implementieren."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* rest.mode = #server

//Specimen
* insert SupportResource(Specimen, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Specimen, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen|2026.0.0, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-zellinie-organoid|2026.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
//Specimen Standard
* insert SupportSearchParam(diagnose, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-diagnose, #reference, #SHALL)
* insert SupportSearchParam(probenebene, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-probenebene, #token, #SHALL)
* insert SupportSearchParam(gehoert-zu, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-gehoert-zu, #reference, #SHALL)
* insert SupportSearchParam(anzahl-aliqouts, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-anzahl-aliquots, #number, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Specimen-identifier, #token, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Specimen-status, #token, #SHALL)
* insert SupportSearchParam(type, http://hl7.org/fhir/SearchParameter/Specimen-type, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Specimen-subject, #reference, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/Specimen-patient, #reference, #SHALL)
* insert SupportSearchParam(parent, http://hl7.org/fhir/SearchParameter/Specimen-parent, #reference, #SHALL)
* insert SupportSearchParam(request, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-request, #reference, #SHALL)
* insert SupportSearchParam(einstellung-blutversorgung, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-einstellung-blutversorgung, #date, #SHALL)
* insert SupportSearchParam(collected, http://hl7.org/fhir/SearchParameter/Specimen-collected, #date, #SHALL)
* insert SupportSearchParam(bodysite, http://hl7.org/fhir/SearchParameter/Specimen-bodysite, #token, #SHALL)
* insert SupportSearchParam(fasting-status, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-fasting-status, #token, #SHALL)
* insert SupportSearchParam(processing-temp, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-processing-temp, #quantity, #SHALL)
* insert SupportSearchParam(processing-procedure, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-processing-procedure, #token, #SHALL)
* insert SupportSearchParam(processing-additive, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-processing-additive, #reference, #SHALL)
* insert SupportSearchParam(processing-date, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-processing-date, #date, #SHALL)
* insert SupportSearchParam(container, http://hl7.org/fhir/SearchParameter/Specimen-container, #token, #SHALL)
* insert SupportSearchParam(container-capacity, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-container-capacity, #quantity, #SHALL)
* insert SupportSearchParam(container-specimen-quantity, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-container-specimen-quantity, #quantity, #SHALL)
* insert SupportSearchParam(container-additive, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-container-additive, #reference, #SHALL)
* insert SupportSearchParam(note, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-note, #string, #SHALL)
//Zellinie/Organoid
* insert SupportSearchParam(kulturprotokoll, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-kulturprotokoll, #reference, #SHALL)
* insert SupportSearchParam(anzahl-passagen, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-anzahl-passagen, #number, #SHALL)
* insert SupportSearchParam(modifikationen, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-modifikationen, #composite, #SHALL)


* insert SupportResource(Substance, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Substance, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|2026.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Substance-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/Substance-code, #token, #SHALL)
//* insert SupportSearchParam(ingredient, , #reference, #SHALL)

* insert SupportResource(Organization, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Organization, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization|2026.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(beschreibung, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-organization-beschreibung, #string, #SHALL)
* insert SupportSearchParam(collection-setting, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-organization-collection-setting, #token, #SHALL)
* insert SupportSearchParam(collection-design, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-organization-collection-design, #token, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Organization-identifier, #token, #SHALL)
* insert SupportSearchParam(name, http://hl7.org/fhir/SearchParameter/Organization-name, #string, #SHALL)
* insert SupportSearchParam(contact-rolle, https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-organization-contact-rolle, #token, #SHALL)
//Contact?

//Observation
* insert SupportResource(Observation, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Observation, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-dna-konzentration|2026.0.0, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-karyotyp|2026.0.0, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-morphologie|2026.0.0, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-proliferation|2026.0.0, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung|2026.0.0, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-wachstumstyp|2026.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Observation-status, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Observation-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(focus, http://hl7.org/fhir/SearchParameter/Observation-focus, #reference, #SHALL)

* insert SupportSearchParam(value-concept, http://hl7.org/fhir/SearchParameter/Observation-value-concept, #token, #SHALL)
* insert SupportSearchParam(value-quantity, http://hl7.org/fhir/SearchParameter/Observation-value-quantity, #quantity, #SHALL)

* insert SupportSearchParam(code-value-concept, http://hl7.org/fhir/SearchParameter/Observation-code-value-concept, #composite, #SHALL)
* insert SupportSearchParam(code-value-quantity, http://hl7.org/fhir/SearchParameter/Observation-code-value-quantity, #composite, #SHALL)

* insert SupportSearchParam(component-code, http://hl7.org/fhir/SearchParameter/Observation-component-code, #token, #SHALL)
* insert SupportSearchParam(component-code-value-concept, http://hl7.org/fhir/SearchParameter/Observation-component-code-value-concept, #composite, #SHALL)
* insert SupportSearchParam(component-value-concept, http://hl7.org/fhir/SearchParameter/Observation-component-value-concept, #token, #SHALL)
