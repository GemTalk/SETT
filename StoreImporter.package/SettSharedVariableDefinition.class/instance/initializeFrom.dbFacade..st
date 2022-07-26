initialization
initializeFrom: row dbFacade: aDatabaseFacade
	"See DatabaseFacade >> sharedVariablesInPackageWithId: for row ordering."

	"SELECT 
	var.name,
	var.environmentstring,
	var.typestring"

	variableName := row at: 1.
	classFullName := SettClassDefinitionParser
		parse: (row at: 2)
		startingAt: #fullyQualifiedClassName