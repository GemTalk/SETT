accessing
useSessionMethodsForExtensionsForPackageNamed: packageName

	| packageProperties |
	packageProperties := packageNameToPlatformPropertiesMap
		at: packageName
		ifAbsent: [ ^ self defaultUseSessionMethodsForExtensions ].
	^ packageProperties
		at: 'useSessionMethodsForExtensions'
		ifAbsent: [ ^ self defaultUseSessionMethodsForExtensions ]