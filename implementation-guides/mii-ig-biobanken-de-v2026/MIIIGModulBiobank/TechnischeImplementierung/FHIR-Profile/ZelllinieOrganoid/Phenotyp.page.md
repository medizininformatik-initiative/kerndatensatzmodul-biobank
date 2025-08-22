## Phenotyp

Für eine Zellinie oder ein Organoid kann eine Diagnose / ein Phenotyp mit der Extension "Diagnose" erfasst werden, wie bei einer "normalen" Probe auch. Soll ein TNM erfasst werden, soll das [Profil aus dem Onkologie-Modul](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie_V2025/MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Klassifikation-Observation.html) zur Anwendung kommen, wobei bei subject eine [data-absent-reason Extension](https://hl7.org/fhir/R4/extension-data-absent-reason.html) eingesetzt werden kann, wenn jeglicher Patentienbezug:

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation}}