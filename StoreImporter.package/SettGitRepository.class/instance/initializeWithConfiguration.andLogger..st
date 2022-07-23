initializing
initializeWithConfiguration: aDestinationConfiguration andLogger: aLogger

	self logger: aLogger.
	self pathString: aDestinationConfiguration repositoryPathString.
	aDestinationConfiguration isNewRepository ifTrue: [ 
		self
			gitInitAt: aDestinationConfiguration repositoryBeginDate;
			gitCreateInitialBranch: aDestinationConfiguration branchName;
			gitCheckoutBranch: aDestinationConfiguration branchName ]