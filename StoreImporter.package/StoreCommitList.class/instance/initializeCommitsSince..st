fetching
initializeCommitsSince: aDateAndTime
	"Throw away any existing commits, and build a new list from the repository."

	| pundleVersions |
	commits := OrderedCollection new.
	pundleVersions := storeRepository topLevelPundlesSince: aDateAndTime.
	(pundleVersions asSortedCollection: [ :a :b | a timestamp < b timestamp ])
		do: [ :pundleVersion | self addCommitForPundleVersion: pundleVersion ]
