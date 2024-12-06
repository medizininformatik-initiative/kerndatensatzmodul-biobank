Invariant:  mii-bb-1
Description: "Bei der Angabe der Entnahmestelle muss ein ICD-O-3 Topographiecode oder ein SNOMED CT Code angegeben werden."
Expression: "coding.where(system = 'http://snomed.info/sct' or system = 'http://terminology.hl7.org/CodeSystem/icd-o-3').exists()"
Severity:   #error