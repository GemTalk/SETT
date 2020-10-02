private
emptyTonelSubdirectory
	"Must delete the entire contents of the Rowan subdirectory structure each time so we start writing to an empty directory."

	| process argArray |
	argArray := {'-rf'.
	rowanDirectories rowanSubdirectory fullName}.
	process := OSSUnixSubprocess new
		command: '/bin/rm';
		arguments: argArray;
		run.
	process waitForExit.
	process exitStatusInterpreter isSuccess
		ifFalse: [ self error: 'Deleting previous sources failed.' ].
	"Recreate all of the rowan structure"
	rowanDirectories initialize