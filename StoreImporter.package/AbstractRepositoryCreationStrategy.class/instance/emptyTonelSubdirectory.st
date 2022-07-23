directory creation
emptyTonelSubdirectory
	"Must delete the entire contents of the Rowan subdirectory structure each time,
	 so we start writing to an empty directory.
	 It's easier to delete everthing and recreate the empty rowan directories."

	OSSUnixSubprocess new
		command: '/bin/rm';
		arguments: { '-rf'.  self rowanDirectories rowanSubdirectory fullName };
		redirectStdout;
		redirectStderr;
		runAndWaitOnExitDo: [ :process :outString :errString | 
			process isSuccess ifFalse: [ "OSSUnixProcessExitStatus has a nice #printOn: "
					self error: 'Deleting previous sources failed. Exit status: '
							, process exitStatusInterpreter printString , '  stderr: '
							, errString ] ].
	"Recreate all of the rowan structure"
	self rowanDirectories createDirectoryStructure