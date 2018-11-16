writing
writeAndCommit
	self
		emptyTonelSubdirectory;
		writeAllPackages;
		doGitCommit