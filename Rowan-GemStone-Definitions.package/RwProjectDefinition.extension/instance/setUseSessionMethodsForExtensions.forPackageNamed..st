*rowan-gemstone-definitions
setUseSessionMethodsForExtensions: aBool forPackageNamed: packageName

	(self specification platformSpec at: 'gemstone')
		setUseSessionMethodsForExtensions: aBool
		forPackageNamed: packageName
