accessing
addExtensionMethod: aMethodDefinition
	| classDefinition classFullName |
	classFullName := aMethodDefinition classFullName.
	classDefinition := classExtensions
		at: classFullName
		ifAbsentPut: [ SettClassDefinition new className: classFullName ].
	classDefinition addMethod: aMethodDefinition