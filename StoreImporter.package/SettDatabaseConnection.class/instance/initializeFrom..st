initializing
initializeFrom: aSourceConfiguration
	dbHost := aSourceConfiguration dbHost.
	dbPort := aSourceConfiguration dbPort printString.
	dbUser := aSourceConfiguration dbUser.
	dbType := aSourceConfiguration dbType.
	dbName := aSourceConfiguration dbName.
	dbPassword := aSourceConfiguration dbPassword.
	dbType = 'oracle'
		ifTrue: [ dbListener := aSourceConfiguration dbListener ]