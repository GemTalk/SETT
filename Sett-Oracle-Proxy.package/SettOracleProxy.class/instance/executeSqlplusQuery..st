private-run-methods
executeSqlplusQuery: aQuery
	"Write the results of aQuery to a file for processing.  Doesn't use OSSUnixSubProcess output
	because it appears to deadlock?"

	| process fullCommand |
	fullCommand := self sopCommand , ' "' , aQuery , '"'.
	self resetResultStream.
	(process := OSSUnixSubprocess new)
		environmentAt: 'SETPASSWORD' put: dbConnection dbPassword;
		environmentAt: 'SETDBNAME' put: self dbString;
		environmentAt: 'SETUSER' put: dbConnection dbUser;
		environmentAt: 'SETFILELOCATION' put: self outputFilename;
		environmentAt: 'LD_LIBRARY_PATH' put: 'lib';
		shellCommand: fullCommand.	"Using a shell for variable expansion"
	dbConnection dbType = 'oracle' & (dbConnection dbName ~= nil)
		ifTrue: [ process environmentAt: 'SETSCHEMA' put: dbConnection dbName ].
	process run.
	process waitForExit.
	process exitStatusInterpreter isSuccess
		ifFalse: [ self error: 'Oracle proxy connector failed to connect.' ].
	resultStream
		flush;
		close.
	^ self processDBResults