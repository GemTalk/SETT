private
runGitWithArguments: argArray
	| process exitStatus |
	process := OSSUnixSubprocess new
		command: '/usr/bin/git';
		workingDirectory: pathString;
		arguments: argArray;
		redirectStderrTo: SettGitLogger getStreamForGitLogging;
		run.
	exitStatus := process waitForExit.
	exitStatus = 0
		ifFalse: [ self error: 'Git command failed.  See SETT git log output for details.' ]