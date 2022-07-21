accessing
isClassTypeUnnecessaryFrom: aClassDefinition

	^ aClassDefinition classType = #normal
	  | (aClassDefinition classType = #none)