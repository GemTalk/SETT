updating
addMethod: aMethodDefinition

	| classDefinition |
	[ classDefinition := classDefinitions
		                   at: aMethodDefinition classFullName
		                   ifAbsent: [ 
		                   ^ self addExtensionMethod: aMethodDefinition ].
	classDefinition addMethod: aMethodDefinition ]
		on: SettDuplicateSelectorError
		do: [ :ex | 
			ex
				packageVersion: self;
				pass ]