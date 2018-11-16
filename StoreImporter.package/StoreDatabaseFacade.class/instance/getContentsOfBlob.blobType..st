private-transforming
getContentsOfBlob: queryResult blobType: typeInteger
	^ databaseConnection dbType = 'oracle'
		ifTrue: [ (queryResult isKindOf: Array)
				ifTrue: [ queryResult first ]
				ifFalse: [ queryResult ] ]
		ifFalse: [ StoreBlobConverter contentsOfBlob: queryResult blobType: typeInteger ]