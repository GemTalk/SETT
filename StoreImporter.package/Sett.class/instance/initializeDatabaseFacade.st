private
initializeDatabaseFacade
	"For now, we only support 2 databases, with postgres being the default."

	databaseFacade := sourceConfiguration dbType = 'oracle'
		                  ifTrue: [ StoreOracle11Facade for: sourceConfiguration ]
		                  ifFalse: [ StorePostgresFacade for: sourceConfiguration ]