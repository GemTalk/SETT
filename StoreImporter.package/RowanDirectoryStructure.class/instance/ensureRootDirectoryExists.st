directory creation
ensureRootDirectoryExists
	"If the directory for the Git repository doesn't exist, create it."

	| fileReference |
	fileReference := (Path from: self baseRepositoryPathString)
		                 asFileReference.
	fileReference exists
		ifTrue: [ 
			(destinationConfiguration isNewRepository and: [ fileReference hasChildren ])
				ifTrue: [ 
					self error: 'Destination directory exists and is not empty.' ] ]
		ifFalse: [ fileReference createDirectory ]