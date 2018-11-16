*rowan-gemstone-definitions
useSessionMethodsForExtensionsForPackageNamed: packageName

	^ (self specification platformSpec at: 'gemstone')
		useSessionMethodsForExtensionsForPackageNamed: packageName