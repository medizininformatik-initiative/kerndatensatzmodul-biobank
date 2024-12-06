RuleSet: AddMapping(targetCode, targetDisplay, equivalence)
* group.element[=].target[+].code = #{targetCode}
* group.element[=].target[=].display = {targetDisplay}
* group.element[=].target[=].equivalence = {equivalence}

RuleSet: AddAdditiveMapping(additiveCode, additiveDisplay)
* group.element[=].target[=].product[+].property = "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]"
* group.element[=].target[=].product[=].value = #{additiveCode}
* group.element[=].target[=].product[=].display = {additiveDisplay}

RuleSet: InitMapping(code, display)
* group.element[+].code = {code}
* group.element[=].display = {display}

RuleSet: AddComment(comment)
* group.element[=].target[=].comment = {comment}
