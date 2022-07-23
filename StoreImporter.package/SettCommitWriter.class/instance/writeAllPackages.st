private
writeAllPackages

	storeCommit
		writeAllPackagesTo: self rowanDirectories
		loggingTo: logger
		withDestinationConfiguration: self destinationConfiguration