directory creation
emptyTonelSubdirectory
	"Get rid of the files, so there are no spurious artefacts from
	 a previous commit."

	OSSUnixSubprocess new
		command: '/bin/rm';
		arguments: self rowanDirectories rowanSubdirectory fullName , '/*/*';
		redirectStdout;
		redirectStderr;
		runAndWaitOnExitDo: [ :process :outString :errString | 
			process isSuccess ifFalse: [ "OSSUnixProcessExitStatus has a nice #printOn: "
					self error: 'Deleting previous sources failed. Exit status: '
							, process exitStatusInterpreter printString , '  stderr: '
							, errString ] ].
