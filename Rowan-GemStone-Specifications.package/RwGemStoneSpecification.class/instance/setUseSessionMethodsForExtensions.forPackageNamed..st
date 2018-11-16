accessing
setUseSessionMethodsForExtensions: aBool forPackageNamed: packageName

	| packageProperties |
	packageProperties := packageNameToPlatformPropertiesMap
		at: packageName
		ifAbsent: [ packageNameToPlatformPropertiesMap at: packageName put: Dictionary new ].
	aBool 
		ifNil: [
			"remove the entry if it exists"
			packageProperties removeKey: 'useSessionMethodsForExtensions' ifAbsent: [].
			^self ].
	packageProperties at: 'useSessionMethodsForExtensions' put: aBool
