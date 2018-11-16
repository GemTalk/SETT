public
gitCreateInitialBranch: branchName
	"Create a separate branch from master as the target of our import."

	self
		runGitWithArguments:
			{'branch'.
			branchName}