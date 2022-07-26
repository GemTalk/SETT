directory creation
ensureRootDirectoryExists
	"If parent of the directory for the Git repository doesn't exist, create it."

	| fileReference |
	fileReference := (Path from: self baseRepositoryPathString) parent
		                 asFileReference.
	fileReference exists ifFalse: [ fileReference createDirectory ].
	super ensureRootDirectoryExists