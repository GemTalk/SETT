private
emptyTonelSubdirectory

	"Must delete the entire contents of the Rowan subdirectory structure each time so we start writing to an empty directory."

	| argArray |
	argArray := {  '-rf'.
		            rowanDirectories rowanSubdirectory fullName }.
	OSSUnixSubprocess new
		command: '/bin/rm';
		arguments: argArray;
		redirectStdout;
		redirectStderr;
		runAndWaitOnExitDo: [ :process :outString :errString | 
			process isSuccess ifFalse: [ "OSSUnixProcessExitStatus has a nice #printOn: "
					self error: 'Deleting previous sources failed. Exit status: '
							, process exitStatusInterpreter printString , '  stderr: '
							, errString ] ].
	"Recreate all of the rowan structure"
	rowanDirectories initialize