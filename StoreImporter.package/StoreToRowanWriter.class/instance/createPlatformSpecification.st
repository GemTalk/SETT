action
createPlatformSpecification
	| platform gemstoneSpecification |
	platform := Dictionary new.
	gemstoneSpecification := RwGemStoneSpecification new.
	gemstoneSpecification defaultSymbolDictName: 'SETTSymbolDict'.
	gemstoneSpecification defaultUseSessionMethodsForExtensions: false.
	platform at: 'gemstone' put: gemstoneSpecification.
	^ platform