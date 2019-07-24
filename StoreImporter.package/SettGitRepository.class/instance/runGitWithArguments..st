private
runGitWithArguments: argArray
	| process |
	process := OSSUnixSubprocess new
		command: '/usr/bin/git';
		workingDirectory: pathString;
		arguments: argArray;
		redirectStderrTo: SettGitLogger getStreamForGitLogging;
		run.
	process waitForExit.
	process exitStatusInterpreter isSuccess
		ifFalse: [ self error: 'Git command failed.  See SETT git log output for details.' ]