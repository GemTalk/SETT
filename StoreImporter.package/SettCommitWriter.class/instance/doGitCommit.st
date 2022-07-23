private
doGitCommit

	self gitRepository
		gitAddAll;
		gitCommitWithDate: storeCommit timestamp
			author: storeCommit authorForGit
			comment: storeCommit commentStringForGit