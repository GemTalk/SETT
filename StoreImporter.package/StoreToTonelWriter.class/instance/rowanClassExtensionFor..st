private-conversion
rowanClassExtensionFor: aClassDefinition

	| className definition |
	className := aClassDefinition
		             propertyAt: 'sett_transient_className'
		             ifAbsent: [ aClassDefinition classSimpleName ].
	definition := RwClassExtensionDefinition newForClassNamed: className.
	aClassDefinition classVars ifNotEmpty: [ :them | 
		definition classVarNames: them asArray ].
	^ definition