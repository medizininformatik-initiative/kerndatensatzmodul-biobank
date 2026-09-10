<!-- markdownlint-disable MD041 -->
<!-- DERIVED:bridge source=MIIIGModulBiobank/TechnischeImplementierung/Terminologien.page.md gate=B -->

The value sets of this module predominantly bind SNOMED CT codes (specimen type, container type, additives, body site, laboratory procedures) as well as Cell Line Ontology codes (growth type, modifications). The complete, automatically generated list of all value sets can be found in the [artifact overview](artifacts.html); the domain notes on SNOMED CT, SPREC and CLO are on the [Code Systems](code-systems.html) page.

{% sql
  SELECT Url, Name, Title, Version, Status, Web
  FROM ValueSetList
  WHERE ViewType IN (1, 2)
  ORDER BY Name, Url
%}
