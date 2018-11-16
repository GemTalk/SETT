actions
connect
	dbType = 'oracle'
		ifTrue: [ conn := SettOracleProxy newWithDbConnection: self ]
		ifFalse: [ conn := P3Client new url: self url ]