accessing
addClassVariable: aSharedVariableDefinition

	| classVarNames |
	classVarNames := self
		                 propertyAt: 'classVariableNames'
		                 ifAbsentPut: [ SortedCollection new ].
	classVarNames add: aSharedVariableDefinition variableName