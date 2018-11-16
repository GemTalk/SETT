accessing
typeClassDefinitionOf: aClassDefinition
	| definition |
	definition := OrderedDictionary new
		at: #name put: aClassDefinition key;
		at: #superclass put: aClassDefinition superclassName;
		yourself.
	(aClassDefinition classType  = #normal | aClassDefinition classType) = #none
		ifFalse: [ definition at: #classType put: aClassDefinition classType ].
"	aClassDefinition hasTraitComposition
		ifTrue: [ definition at: #traits put: aClassDefinition traitCompositionString ]."
"	aClassDefinition hasClassTraitComposition
		ifTrue: [ definition at: #classTraits put: aClassDefinition classTraitCompositionString ]."
	aClassDefinition instVarNames ifNotEmpty: [ definition at: #instVars put: aClassDefinition instVarNames asArray ].
	aClassDefinition classVarNames ifNotEmpty: [ definition at: #classVars put: aClassDefinition classVarNames asArray ].
	aClassDefinition classinstvars ifNotEmpty: [ definition at: #classinstvars put: aClassDefinition classinstvars asArray ].
	aClassDefinition gs_constraints ifNotEmpty: [ definition at: #gs_constraints put: aClassDefinition gs_constraints asArray ].
	aClassDefinition gs_options ifNotEmpty: [ definition at: #gs_options put: aClassDefinition gs_options asArray].
	"aClassDefinition pools ifNotEmpty: [ definition at: #pools put: aClassDefinition pools ]."
	(aClassDefinition otherProperty: #originalCategory )ifNotNil: [ definition at: #originalCategory put: (aClassDefinition otherProperty: #originalCategory) ].
	definition at: #category put: aClassDefinition category.
	
	^ self toSTON: definition