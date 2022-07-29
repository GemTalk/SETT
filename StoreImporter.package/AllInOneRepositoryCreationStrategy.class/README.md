The all-in-one creation strategy acts like SETT 1.x did. Everything extracted from Store goes into a single git repository. Given that a Store repository can hold artefacts from many different projects, extracting everything into a single repository can make it hard to find successive versions of individual projects. However, if extracting a single project from Store, the all-in-one strategy is perfectly suited.

Instance Variables:
	gitRepository		<SettGitRepository>			the single git repo model
	rowanDirectories	<RowanDirectoryStructure>	the single directory structure model
