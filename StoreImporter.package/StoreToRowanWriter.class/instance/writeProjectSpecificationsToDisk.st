action
writeProjectSpecificationsToDisk
	self
		writeRowanDefinition: self createRowanSpecifications
		toDirectory: rowanDirectories rowanSpecsDirectory
		withFilename: destinationConfiguration rowanProjectName , '.ston'