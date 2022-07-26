private
initializeDatabaseFacade
	"For now, we only support 2 databases, with postgres being the default."

	dbFacade := sourceConfiguration dbType = 'oracle'
		                  ifTrue: [ StoreOracle11Facade for: sourceConfiguration ]
		                  ifFalse: [ StorePostgresFacade for: sourceConfiguration ]