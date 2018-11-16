instance creation
newWithDbConnection: settDBConnection

	^ self basicNew 
		dbConnection: settDBConnection;
		resultStream;
		yourself.