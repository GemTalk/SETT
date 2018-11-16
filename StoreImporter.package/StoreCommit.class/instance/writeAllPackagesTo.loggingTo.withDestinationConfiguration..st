writing
writeAllPackagesTo: rowanDirectories loggingTo: aSettLogger withDestinationConfiguration: aDestinationConfiguration
	| allPackageNames pundleName |
	allPackageNames := OrderedCollection new.
	pundleName := pundleVersion pundleName.
	destinationConfiguration := aDestinationConfiguration.
	userMap := aDestinationConfiguration userMapping.
	self
		allPackageVersionsDo: [ :packageVersion | 
			| copy tonelWriter |
			"Copy the packageVersion so that its contents 
			can get GCed once it has been written to disk."
			copy := packageVersion copy.
			copy fetchContentsWithLogger: aSettLogger.
			tonelWriter := StoreToTonelWriter
				writePackage: copy
				to: rowanDirectories
				withDestinationConfiguration: destinationConfiguration
				withLogger: aSettLogger.
				"Merge the arrays to appease Tonel formatting"
			allPackageNames addAll: tonelWriter packagesWritten ].
	self
		writeProjectFor: pundleName
		withPackages: allPackageNames asArray
		to: rowanDirectories