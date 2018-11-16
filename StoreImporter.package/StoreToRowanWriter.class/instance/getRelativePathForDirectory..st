action
getRelativePathForDirectory: aDirectory
	| baseDir |
	baseDir := destinationConfiguration rowanSubdirectory.
	^ baseDir , '/' , aDirectory