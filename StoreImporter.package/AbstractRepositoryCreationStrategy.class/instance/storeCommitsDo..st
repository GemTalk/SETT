enumerating
storeCommitsDo: aOneOrTwoArgBlock
	"Iterate over the store commits evaluating the block for each.
	 The arguments to the block are the store commit and its ordinal
	 position in the list. The second argument is optional."

	storeCommitList doWithIndex:
		[ :each :index | 
		aOneOrTwoArgBlock cull: each cull: index ]