instance creation
for: aSourceConfiguration
	| connection |
	connection := SettDatabaseConnection new.
	connection
		initializeFrom: aSourceConfiguration;
		connect.
	^ self new
		databaseConnection: connection;
		yourself