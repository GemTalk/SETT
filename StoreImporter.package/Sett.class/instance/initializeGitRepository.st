private
initializeGitRepository
	self ensureGitRepositoryDirectory.
	gitRepository := SettGitRepository forConfiguration: destinationConfiguration withLogger: logger.