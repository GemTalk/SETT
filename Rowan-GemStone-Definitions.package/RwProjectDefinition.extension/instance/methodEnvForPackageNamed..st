*rowan-gemstone-definitions
methodEnvForPackageNamed: packageName

	^ (self specification platformSpec at: 'gemstone')
		methodEnvForPackageNamed: packageName