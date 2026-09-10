<!-- markdownlint-disable MD041 -->

Die ValueSets dieses Moduls binden überwiegend SNOMED-CT-Codes (Probenart, Containertyp, Additive, Body Site, Laborverfahren) sowie Codes der Cell Line Ontology (Wachstumstyp, Modifikationen). Die vollständige, automatisch generierte Liste aller ValueSets findet sich in der [Artefakt-Übersicht](artifacts.html); die fachlichen Hinweise zu SNOMED CT, SPREC und CLO stehen auf der Seite [CodeSystems](code-systems.html).

{% sql
  SELECT Url, Name, Title, Version, Status, Web
  FROM ValueSetList
  WHERE ViewType IN (1, 2)
  ORDER BY Name, Url
%}
