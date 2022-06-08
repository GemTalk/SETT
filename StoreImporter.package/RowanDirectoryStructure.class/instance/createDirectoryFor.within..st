initializing
createDirectoryFor: aDirectoryName within: aBaseDirectory
	| destinationDirectory |
	destinationDirectory := ((Path from: aBaseDirectory)
		/ aDirectoryName) asFileReference.
	destinationDirectory exists
		ifTrue: [ destinationDirectory isDirectory
				ifFalse: [ self
						error: 'Specified Rowan directory ''' , aDirectoryName , ''' exists, but is not a directory.' ] ]
		ifFalse: [ destinationDirectory createDirectory ].
	^ destinationDirectory