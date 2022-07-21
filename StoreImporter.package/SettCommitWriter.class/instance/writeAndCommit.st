writing
writeAndCommit
	self
		emptyTonelSubdirectory;
		writeAllPackages;
		commitAndTag