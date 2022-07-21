Specifies where SETT's output should go -- the location of the git repository, whether to create a new empty repository at that location, and what branch name to use when committing. 

By default, everything is extracted from Store and written in Tonel format capturing all the VW aspects of the repostory. By default, everything is written into a single git repository. This is best when there is a single project in the Store repository. However, when there are multiple projects in a single Store repository, it gets difficult to browse and find what you a looking for and having each  "project" in its own subdirectory works better.

e.g. typically:
./<rowanProjectName>/rowan
./<rowanProjectName>/rowan/sources
./<rowanProjectName>/rowan/sources/PundleName1
./<rowanProjectName>/<rowanProjectName>/rowan/sources/PackageName1/package.st
./<rowanProjectName>/rowan/sources/PackageName1/Class1.class.st
./<rowanProjectName>/rowan/sources/PackageName1/Class2.class.st
./<rowanProjectName>/rowan/sources/PackageName2/package.st
./<rowanProjectName>/rowan/sources/PackageName2/Class3.class.st
etc.
./<rowanProjectName>/rowan/sources/properties.st
./<rowanProjectName>/rowan/configs
./<rowanProjectName>/rowan/configs/Default.ston
./<rowanProjectName>/rowan/specs
./<rowanProjectName>/rowan/specs/<rowanProjectName>.ston

When separateGitRepos is true, the directory structure will be shaped like this:
./<rowanProjectName>/<top-level pundle name>/rowan
...
./<rowanProjectName>/<top-level pundle name>/rowan/specs/<top-level pundle name>.ston


Internal Representation and Key Implementation Points.

    Instance Variables
	branchName:		<String>		The name of the git branch
	isNewRepository:		<Boolean>		Create and initialize git for the extract.
	repositoryBeginDate:		<DateAndTime>		Oldest timestamp to extract.
	repositoryPathString:		<String>		Latest timestamp to extract.
	rowanConfigsDirectoryName:		<String>		Subdirectory name for Rowan config files.
	rowanProjectName:		<String>		The name of the project.
	rowanSourcesDirectoryName:		<String>		Subdirectory name for Rowan source code files.
	rowanSpecsDirectoryName:		<String>		Subdirectory name for Rowan spec files.
	rowanSubdirectoryName:		<String>		Subdirectory name for Rowan artefacts.
	separateGitRepos:		<Boolean>		Whether each top-level pundle name should be a separate git repository.
	tonelWriterClass:		<Behavior>		Class to use for writing out tonel format files.
	userMapping:		<SettUserMap>		Instructions for mapping Store users to git users.


    Implementation Points