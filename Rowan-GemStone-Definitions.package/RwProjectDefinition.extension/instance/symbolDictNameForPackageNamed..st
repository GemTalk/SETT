*rowan-gemstone-definitions
symbolDictNameForPackageNamed: packageName

	^ (self specification platformSpec at: 'gemstone')
		symbolDictNameForPackageNamed: packageName