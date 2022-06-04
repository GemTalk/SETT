private-conversion
rowanClassExtensionFor: classDefinition

	| className |
	className := classDefinition
		             propertyAt: 'sett_transient_className'
		             ifAbsent: [ classDefinition classSimpleName ].
	^ RwClassExtensionDefinition newForClassNamed: className