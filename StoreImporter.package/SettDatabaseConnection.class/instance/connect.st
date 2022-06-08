actions
connect

	conn := dbType = 'oracle'
		        ifTrue: [ SettOracleProxy newWithDbConnection: self ]
		        ifFalse: [ P3Client new url: self url ]