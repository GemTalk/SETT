writing
writeProjectFor: pundleName withPackages: allPackageNames to: tonelDirectory 

	StoreToRowanWriter
		writeProjectConfigurationFor: pundleName
		withPackages: allPackageNames
		withDestinationConfiguration: destinationConfiguration
		to: tonelDirectory