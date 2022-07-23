directory creation
createOrVerifyDirectoriesExist
	"Initialize the git repository *after* we've created any directories needed."

	self
		createRowanDirectoryStructure;
		initializeGitRepository