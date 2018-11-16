public
gitCheckoutBranch: branchName
	"Switch our working branch to the store import destination branch"

	self
		runGitWithArguments:
			{'checkout'.
			branchName}