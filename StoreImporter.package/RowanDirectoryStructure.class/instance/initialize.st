accessing
initialize
	"First, create the top level Rowan directory"

	| baseFsDir baseRowanDir |
	baseFsDir := destinationConfiguration repositoryPathString.
	baseRowanDir := baseFsDir , '/' , destinationConfiguration rowanSubdirectoryName.
	rowanSubdirectory := self
		createDirectoryFor: destinationConfiguration rowanSubdirectoryName
		within: baseFsDir.

	"And then build the rowan structure"
	rowanSourcesDirectory := self
		createDirectoryFor: destinationConfiguration rowanSourcesDirectoryName
		within: baseRowanDir.
	rowanConfigsDirectory := self
		createDirectoryFor: destinationConfiguration rowanConfigsDirectoryName
		within: baseRowanDir.
	rowanSpecsDirectory := self
		createDirectoryFor: destinationConfiguration rowanSpecsDirectoryName
		within: baseRowanDir