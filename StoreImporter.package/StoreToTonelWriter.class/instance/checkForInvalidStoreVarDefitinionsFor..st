private-conversion
checkForInvalidStoreVarDefitinionsFor: classDefinition
	classDefinition requiredVars
		do: [ :variableType | 
			(classDefinition attributeExistsOrIsNil: variableType)
				ifNil: [ logger
						log:
							'Warning!: ' , variableType , ' not defined by Store for class '
								, classDefinition classSimpleName ] ]