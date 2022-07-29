private-conversion
rowanClassDefinitionFor: classDefinition

	| rwClassDefinition |
	rwClassDefinition := super rowanClassDefinitionFor: classDefinition.

	classDefinition
		propertyAt: 'sett_transient_className'
		ifPresent: [ :altClassName | rwClassDefinition name: altClassName ].
	classDefinition
		propertyAt: 'sett_transient_superclassName'
		ifPresent: [ :altSuperclassName | rwClassDefinition superclassName: altSuperclassName ].

	^ rwClassDefinition