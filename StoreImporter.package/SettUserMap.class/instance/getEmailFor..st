checking
getEmailFor: aStoreUsername
	| gitMapping |
	gitMapping := userMap
		at: aStoreUsername
		ifAbsent: [ ^ aStoreUsername , ' <' , aStoreUsername , '@imported-from-store>' ].
	^ gitMapping author , ' <' , gitMapping email , '>'