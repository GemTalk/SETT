The individual creation strategy creates a directory for each "project" found in Store and creates the git repository in that sub-directory. SETT identifies the versions of eligible pundles which are not contained in any other pundle version and uses the set of names to name the sub-directories that partition the extracted source code.

Instance Variables:
	currentPundleName		<String>				the name of the pundle currently being iterated over
	gitRepositoriesMap		<pundleName -> SettGitRepository>
														identifies the individual git repository model for each name
	rowanDirectoriesMap	<pundleName -> NestedRowanDirectoryStructure>
														identifies the individual directory structure model for each name
