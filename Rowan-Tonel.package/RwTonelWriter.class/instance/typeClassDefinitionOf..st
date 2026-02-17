accessing
typeClassDefinitionOf: aClassDefinition

	| definition |
	definition := OrderedDictionary new
		              at: #name put: aClassDefinition key;
		              at: #superclass put: aClassDefinition superclassName;
		              yourself.
	(self isClassTypeUnnecessaryFrom: aClassDefinition) ifFalse: [ 
		definition
			at: #classType
			put: aClassDefinition classType ].
	aClassDefinition instVarNames ifNotEmpty: [ 
		definition
			at: #instVars
			put: aClassDefinition instVarNames asArray ].
	aClassDefinition classVarNames ifNotEmpty: [ 
		definition
			at: #classVars
			put: aClassDefinition classVarNames asArray ].
	aClassDefinition classinstvars ifNotEmpty: [ 
		definition
			at: #classinstvars
			put: aClassDefinition classinstvars asArray ].
	aClassDefinition gs_constraints ifNotEmpty: [ 
		definition
			at: #gs_constraints
			put: aClassDefinition gs_constraints asArray ].
	aClassDefinition gs_options ifNotEmpty: [ 
		definition
			at: #gs_options
			put: aClassDefinition gs_options asArray ].
	(aClassDefinition otherProperty: #vw_namespace) ifNotNil: [ 
		definition
			at: #vw_namespace
			put: (aClassDefinition otherProperty: #vw_namespace) ].

	definition at: #category put: aClassDefinition category.


	^ self toSTON: definition
