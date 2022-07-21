writing
writeAllPackagesTo: rowanDirectories loggingTo: aSettLogger withDestinationConfiguration: aDestinationConfiguration

	| allPackageNames pundleName allClassNames deferredPackageVersions |
	allPackageNames := OrderedCollection new.
	pundleName := pundleVersion pundleName.
	destinationConfiguration := aDestinationConfiguration.
	userMap := aDestinationConfiguration userMapping.
	allClassNames := Set new: 1000.
	deferredPackageVersions := OrderedCollection new.

	self allPackageVersionsDo: [ :packageVersion | 
		| copy tonelWriter |
		"Copy the packageVersion so that its contents 
		 can get GCed once it has been written to disk."
		copy := packageVersion copy.
		copy
			fetchContentsWithLogger: aSettLogger
			allClassNames: allClassNames.
		copy hasUnfinishedBusiness
			ifTrue: [ 
				deferredPackageVersions add: copy.
				aSettLogger debug: 'Deferred writing contents of ' , copy printString ]
			ifFalse: [ 
				tonelWriter := destinationConfiguration tonelWriterClass
					               writePackage: copy
					               to: rowanDirectories
					               withDestinationConfiguration:
					               destinationConfiguration
					               withLogger: aSettLogger.
				allPackageNames addAll: tonelWriter packagesWritten ] ].

	deferredPackageVersions do: [ :packageVersion | 
		| tonelWriter |
		packageVersion retryProblematicSharedVariables.
		tonelWriter := destinationConfiguration tonelWriterClass
			               writePackage: packageVersion
			               to: rowanDirectories
			               withDestinationConfiguration:
			               destinationConfiguration
			               withLogger: aSettLogger.
		allPackageNames addAll: tonelWriter packagesWritten ].

	self
		writeProjectFor: pundleName
		withPackages: allPackageNames asArray
		to: rowanDirectories