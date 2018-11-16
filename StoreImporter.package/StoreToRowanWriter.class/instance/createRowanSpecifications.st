action
createRowanSpecifications
	| createRowanSpecification |
	createRowanSpecification := RwSimpleProjectSpecification newNamed: pundleName.
	createRowanSpecification
		specName: destinationConfiguration rowanProjectName;
		platformSpec: self createPlatformSpecification;
		repoSpec: self createRepoSpec;
		configsPath: (self getRelativePathForDirectory: destinationConfiguration rowanConfigsDirectory);
		repoPath: (self getRelativePathForDirectory: destinationConfiguration rowanSourcesDirectory);
		specsPath: (self getRelativePathForDirectory: destinationConfiguration rowanSpecsDirectory);
		comment: 'This project was automatically created from a Store publish.'.
	^ createRowanSpecification