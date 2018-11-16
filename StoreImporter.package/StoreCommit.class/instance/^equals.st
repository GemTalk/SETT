comparing
= aStoreCommit
	self class = aStoreCommit class
		ifFalse: [ ^ false ].
	^ pundleVersion = aStoreCommit pundleVersion