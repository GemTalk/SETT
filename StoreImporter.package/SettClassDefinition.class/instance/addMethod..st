accessing
addMethod: aMethodDefinition
	"There are real examples of packages with duplicate selectors. No idea how or why.
	 Capture them, so a reader can determine which is correct."

	| collection |
	collection := aMethodDefinition isMeta
		              ifTrue: [ classMethods ]
		              ifFalse: [ instanceMethods ].
	collection
		at: aMethodDefinition selector
		ifPresent: [ 
			SettDuplicateSelectorError
				signalFor: aMethodDefinition
				selectors: collection keys.
			"If we resume from the exception, try it again."
			self addMethod: aMethodDefinition ]
		ifAbsentPut: [ aMethodDefinition ]