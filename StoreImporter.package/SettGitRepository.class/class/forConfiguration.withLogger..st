instance creation
forConfiguration: aDestinationConfiguration withLogger: aLogger
	| newInstance |
	newInstance := self new.
	newInstance logger: aLogger.
	newInstance pathString: aDestinationConfiguration repositoryPathString .
	aDestinationConfiguration isNewRepository
		ifTrue: [ newInstance
				gitInitAt:  aDestinationConfiguration repositoryBeginDate;
				gitCreateInitialBranch: aDestinationConfiguration branchName;
				gitCheckoutBranch: aDestinationConfiguration branchName ].
	^ newInstance