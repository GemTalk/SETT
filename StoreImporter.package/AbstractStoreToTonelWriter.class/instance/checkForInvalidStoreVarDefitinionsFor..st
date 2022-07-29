private-conversion
checkForInvalidStoreVarDefitinionsFor: classDefinition

	classDefinition requiredVars do: [ :variableType | 
		(classDefinition isAttributeSpecified: variableType)
			ifFalse: [ 
				logger log:
					'Warning!: ' , variableType , ' not defined by Store for class '
					, classDefinition classSimpleName ] ]