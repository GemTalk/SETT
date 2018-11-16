accessing
initialize
	"First, create the top level Rowan directory"

	| baseFsDir baseRowanDir |
	baseFsDir := destinationConfiguration repositoryPathString.
	baseRowanDir := baseFsDir , '/' , destinationConfiguration rowanSubdirectory.
	rowanSubdirectory := self
		createDirectoryFor: destinationConfiguration rowanSubdirectory
		within: baseFsDir.

	"And then build the rowan structure"
	rowanSourcesDirectory := self
		createDirectoryFor: destinationConfiguration rowanSourcesDirectory
		within: baseRowanDir.
	rowanConfigsDirectory := self
		createDirectoryFor: destinationConfiguration rowanConfigsDirectory
		within: baseRowanDir.
	rowanSpecsDirectory := self
		createDirectoryFor: destinationConfiguration rowanSpecsDirectory
		within: baseRowanDir