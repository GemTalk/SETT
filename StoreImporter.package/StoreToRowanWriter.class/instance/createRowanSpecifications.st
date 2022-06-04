action
createRowanSpecifications
	| createRowanSpecification |
	createRowanSpecification := RwSimpleProjectSpecification newNamed: pundleName.
	createRowanSpecification
		specName: destinationConfiguration rowanProjectName;
		platformSpec: self createPlatformSpecification;
		repoSpec: self createRepoSpec;
		configsPath: (self getRelativePathForDirectory: destinationConfiguration rowanConfigsDirectoryName);
		repoPath: (self getRelativePathForDirectory: destinationConfiguration rowanSourcesDirectoryName);
		specsPath: (self getRelativePathForDirectory: destinationConfiguration rowanSpecsDirectoryName);
		comment: 'This project was automatically created from a Store publish.'.
	^ createRowanSpecification