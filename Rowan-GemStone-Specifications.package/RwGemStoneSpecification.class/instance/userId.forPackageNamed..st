accessing
userId: userId forPackageNamed: packageName

	| packageProperties |
	packageProperties := packageNameToPlatformPropertiesMap
		at: packageName
		ifAbsent: [ packageNameToPlatformPropertiesMap at: packageName put: Dictionary new ].
	packageProperties at: 'userId' put: userId