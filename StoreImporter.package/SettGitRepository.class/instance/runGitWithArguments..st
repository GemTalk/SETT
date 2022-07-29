private
runGitWithArguments: argArray

	OSSUnixSubprocess new
		command: '/usr/bin/git';
		workingDirectory: pathString;
		arguments: argArray;
		redirectStdout;
		redirectStderr;
		runAndWaitPollingEvery: (Delay forSeconds: 1)
		retrievingStreams: true
		onExitDo: [ :process :outString :errString | 
			process isSuccess
				ifTrue: [ ^ outString ]
				ifFalse: [ "OSSUnixProcessExitStatus has a nice #printOn: "
					| errorResult |
					errorResult := 'Git command failed. Exit status: '
					               , process exitStatusInterpreter printString
					               , '  stdout: ' , outString , '  stderr: '
					               , errString.
					logger log: errorResult.
					self error: errorResult ] ]