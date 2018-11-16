accessing
methodEnvForPackageNamed: packageName

	| packageProperties |
	packageProperties := packageNameToPlatformPropertiesMap
		at: packageName
		ifAbsent: [ ^ self defaultMethodEnv ].
	^ packageProperties at: 'methodEnv' ifAbsent: [ ^ self defaultMethodEnv ]