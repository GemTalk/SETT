public
gitAddAll
	"git add -A, move all changed or deleted files to the index for commit."

	self runGitWithArguments: {'add' . '--all'}