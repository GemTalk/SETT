private
initializeDatabaseFacade
	"For now, we only support 2 databases, with postgres being the default."
	sourceConfiguration dbType = 'oracle'
		ifTrue: [ databaseFacade := StoreOracle11Facade for: sourceConfiguration ]
		ifFalse: [ databaseFacade := StorePostgresFacade for: sourceConfiguration ]