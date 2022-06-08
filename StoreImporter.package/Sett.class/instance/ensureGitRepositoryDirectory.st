private
ensureGitRepositoryDirectory
	"If the directory for the Git repository doesn't exist, create it."

	| repositoryPath fileReference |
	repositoryPath := Path from: destinationConfiguration repositoryPathString.
	fileReference := repositoryPath asFileReference.
	[ fileReference createDirectory ]
		on: DirectoryExists
		do: [ destinationConfiguration isNewRepository
				ifTrue: [ fileReference hasChildren
						ifTrue: [ self error: 'Destination directory exists and is not empty.' ] ] ]