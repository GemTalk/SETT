action
createRepoSpec
	| repoSpec |
	repoSpec := RwGitRepositorySpecification new.
	repoSpec
		committish: destinationConfiguration branchName;
		committishType: 'branch'.
	^ repoSpec