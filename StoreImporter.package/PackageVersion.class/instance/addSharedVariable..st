accessing
addSharedVariable: aSharedVariableDefinition
	| classDefinition |
	classDefinition := classDefinitions
		at: aSharedVariableDefinition classFullName
		ifAbsent: [ ^ logger log: 'Warning!: Shared variable ' , aSharedVariableDefinition signature , ' ignored as possible pool variable.' ].
	classDefinition addClassVariable: aSharedVariableDefinition