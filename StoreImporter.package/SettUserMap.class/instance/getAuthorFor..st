checking
getAuthorFor: aStoreUsername
	| gitMapping |
	gitMapping := userMap at: aStoreUsername ifAbsent: [ ^ aStoreUsername ].
	^ gitMapping author