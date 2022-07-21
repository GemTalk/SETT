updating
addExtensionMethod: aMethodDefinition

	| classDefinition classFullName |
	classFullName := aMethodDefinition classFullName.
	classDefinition := classExtensions
								at: classFullName
								ifAbsentPut: [ 
									allClassNames add: classFullName.
									SettClassDefinition new className: classFullName ].
	classDefinition addMethod: aMethodDefinition