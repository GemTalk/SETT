accessing
symbolDictNameForPackageNamed: packageName

	| packageProperties |
	packageProperties := packageNameToPlatformPropertiesMap
		at: packageName
		ifAbsent: [ ^ self defaultSymbolDictName ].
	^ packageProperties
		at: 'symbolDictName'
		ifAbsent: [ ^ self defaultSymbolDictName ]