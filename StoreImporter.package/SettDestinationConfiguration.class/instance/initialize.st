initialization
initialize
	"Subclasses should override this method to initialize to the desired values."

	repositoryPathString := './myGitRepository'.
	rowanProjectName := 'StoreExport'.
	isNewRepository := true.
	separateGitRepos := false.
	branchName := 'fromStore'.
	classNameDotReplacement := '.'.	"No replacement needed"

	tonelWriterClass := StoreToTonelWriter.
	debugLogging := false.
	
	"The following configuration parameters should not be changed"
	rowanSubdirectoryName := 'rowan'.
	rowanSourcesDirectoryName := 'sources'.
	rowanConfigsDirectoryName := 'configs'.
	rowanSpecsDirectoryName := 'specs'.
