logging
logOutputStream
	| working |
	working := FileSystem disk workingDirectory.
	logOutputSream := (working / 'sett.log') writeStream setToEnd