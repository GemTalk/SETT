initialization
initialize
	"Subclasses should override this method to initialize to the desired values."

	repositoryPathString := './myGitRepository'.
	rowanProjectName := 'StoreExport'.
	isNewRepository := true.
	branchName := 'fromStore'.

	"The following configuration parameters should not be changed"
	rowanSubdirectory := 'rowan'.
	rowanSourcesDirectory := 'sources'.
	rowanConfigsDirectory := 'configs'.
	rowanSpecsDirectory := 'specs'