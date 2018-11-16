accessing
addClassVariable: aSharedVariableDefinition
	| classVarNames |
	classVarNames := properties at: 'classVariableNames' ifAbsentPut: [ SortedCollection new ].
	classVarNames add: aSharedVariableDefinition variableName