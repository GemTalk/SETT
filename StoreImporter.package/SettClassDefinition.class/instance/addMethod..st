accessing
addMethod: aMethodDefinition
	"There are real examples of packages with duplicate selectors. No idea how or why.
	 Capture them, so a reader can determine which is correct."

	<todo: 'This is kind of hacky. If we keep it, it should be reworked.'>
	| collection |
	collection := aMethodDefinition isMeta
		              ifTrue: [ classMethods ]
		              ifFalse: [ instanceMethods ].
	collection
		at: aMethodDefinition selector
		ifPresent: [ "THIS IS A HACK, FOR DISCOVERY, TO UNDERSTAND HOW THERE ARE DUPLICATE METHODS.
			self error: 'Duplicate selector'"
			| prefix candidate |
			prefix := 'DUPLICATE_'.
			(1 to: 999) detect: [ :index | 
				candidate := prefix , index printString , '_'.
				(collection includesKey: candidate , aMethodDefinition selector)
					not ].
			aMethodDefinition prefixSelectorWith: candidate.
			collection
				at: aMethodDefinition selector
				ifPresent: [ self error: 'Duplicate selector' ]
				ifAbsentPut: [ aMethodDefinition ].
			Transcript crShow:
				'Duplicate selector renamed: '
				, self classFullName definitionString , (aMethodDefinition isMeta
					 ifTrue: [ ' class>>#' ]
					 ifFalse: [ ' >>#' ]) , aMethodDefinition selector ]
		ifAbsentPut: [ aMethodDefinition ]