action
getRelativePathForDirectory: aDirectory
	| baseDir |
	baseDir := destinationConfiguration rowanSubdirectoryName.
	^ baseDir , '/' , aDirectory