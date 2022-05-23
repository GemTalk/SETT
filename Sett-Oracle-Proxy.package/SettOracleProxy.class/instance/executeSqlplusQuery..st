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
		shellCommand: fullCommand. "Using a shell for variable expansion"
	(dbConnection dbType = 'oracle' and: [ dbConnection dbName notNil ]) 
		ifTrue: [ process environmentAt: 'SETSCHEMA' put: dbConnection dbName ].
	process
		redirectStdout;
		redirectStderr;
		runAndWaitOnExitDo: [ :theProcess :outString :errString | 
			theProcess isSuccess ifFalse: [ 
					"OSSUnixProcessExitStatus has a nice #printOn: "
					self error:
							'Oracle proxy connector failed to connect. Exit status: '
							, theProcess exitStatusInterpreter printString , '  stderr: '
							, errString ] ].
	resultStream
		flush;
		close.
	^ self processDBResults