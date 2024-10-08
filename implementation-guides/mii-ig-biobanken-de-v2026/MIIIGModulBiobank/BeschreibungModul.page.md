## Beschreibung Modul 'Biobank'

{{render:29_Abbildung_Bioprobendaten_de_2023-08-10.jpg}}

Bioproben werden prospektiv in Form von krankheitsspezifischen sowie populationsbezogenen Biobanken gesammelt. Sowohl die übergeordnete Biobank als auch die individuellen Proben müssen für eine sinnvolle Verwendung strukturiert beschrieben werden. Relevante Merkmale zur Probensammlung umfassen unter anderem die abgedeckten Krankheitsbilder, Probentypen, Mengengerüste und Zugangswege (hierbei handelt es sich um Metadaten). Probenspezifische Daten sollten Angaben zu Probentyp, Probenmaterial, Menge, Gewinnung, präanalytischer Verarbeitung (inkl. Aliquotierung, Pooling) und Lagerung enthalten. Klinische Daten zur Probe werden ausdrücklich nicht von diesem Modul abgedeckt, sondern sollten über die für die jeweilige Datenart vorgesehenen Modulen bereitgestellt werden.

### Abbildung Modul Bioprobendaten in ART-DECOR

Das Erweiterungsmodul Biobank ermöglich die Darstellung von Daten zu Bioproben, ihrer Gewinnung, Verarbeitung und Lagerung sowie der Organisationeinheiten, die diese Proben verwalten. 

Eine Bioprobe kann über eine Entnahme einer Person (Modul Person) zugeordnet werden. Gleichzeitig erlaubt die Entnahme-Entität die Verknüpfung einer Diagnose (Modul Diagnose) als Indikation. Bei der Beschreibung der Bioprobe selbst wurde beschlossen, auf SNOMED CT Codes zur Angabe der Probenart zu setzen. Ein Mapping anderer Standards zur Codierung des Probentyps, insbesondere SPREC 2.0, wurde bereits begonnen und soll als Teil des Implementation Guides bereitgestellt werden. Im vorliegenden Informationsmodell sollen Additive getrennt vom eigentlichen Probenmaterial erfasst werden. So erlaubt der mit der Bioprobe verbundene Primärcontainer neben der Angabe des Containertyps die Angabe eines Additives. Hier sollen ebenfalls SNOMED CT Codes zum Einsatz kommen. Weitere Additive können als Teil von Verarbeitungsschritten erfasst werden. Mittels der Verarbeitungsschritte kann auch die Gewinnung einer oder mehrerer Probe(n) aus einer anderen Probe modelliert werden, falls Daten zum Verarbeitungsschritt fehlen kann dies auch über eine direkte Verknüpfung der entsprechenden Proben geschehen.  

Die Bioprobe kann außerdem Pathologiebefunden (Modul Pathologie), Laborbefunden (Modul Labor) sowie Diagnosen (Modul Diagnose) zugeordnet werden, um sie mit weiteren klinischen Informationen zu verbinden. 

Die Lagerung einer Bioprobe kann durch eine Reihe von Lagerprozessen, die jeweils Beginn, Ende und Lagerungsbedingungen umfassen, nachvollzogen werden. Lagerprozesse werden wie auch jede Bioprobe einer Probensammlung/Biobank zugeordnet, die als Anlaufstelle für Anfragen zur Probe fungiert. Eine Zuordnung von z.B. untergeordneten Sammlungen zu einer Biobank ist hier über eine Referenz möglich. Zusätzlich können weitere aus dem auf MIABIS aufbauenden BBMRI-ERIC Directory Datenmodell übernommene Attribute wie Name oder Sammlungstyp erfasst werden. Um mit der eine Probe verwaltenden Organisation in Verbindung treten zu können, ist außerdem die Angabe eines Kontakts vorgesehen. 

Auch wenn der SPREC 3.0 Code nicht direkt Teil des Datenmodelles ist, finden sich doch alle darin enthaltenen Datenelemente im vorliegenden Datenmodell wieder. 

#### Übersicht

{{render:miibioprobenartdecoruebersicht}}

#### Bioprobe

{{render:miibioprobenartdecorbioprobe}}

#### Primärcontainer

{{render:miibioprobenartdecorprimaercontainer}}

#### Probenentnahme

{{render:miibioprobenartdecorprobenentnahme}}

#### Verarbeitungs- und Lagerprozess

{{render:miibioprobenartdecorprozesse}}

#### Probensammlung/Biobank

{{render:miibioprobenartdecorprobensammlung}}