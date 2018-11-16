accessing
addMethod: aMethodDefinition
	| classDefinition |
	classDefinition := classDefinitions
		at: aMethodDefinition classFullName
		ifAbsent: [ ^ self addExtensionMethod: aMethodDefinition ].
	classDefinition addMethod: aMethodDefinition
