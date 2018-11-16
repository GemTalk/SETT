public
writeCommit: aStoreCommit toRowanDirectoryStructure: rowanDirectories inGitRepository: aGitRepository loggingTo: aSettLoger withDestinationConfiguraiton: destinationConfiguration
	self new
		gitRepository: aGitRepository;
		rowanDirectories: rowanDirectories;
		storeCommit: aStoreCommit;
		logger: aSettLoger;
		destinationConfiguration: destinationConfiguration;
		writeAndCommit