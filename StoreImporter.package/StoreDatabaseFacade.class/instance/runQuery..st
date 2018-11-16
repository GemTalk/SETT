private-accessing
runQuery: aQuery
	| queryResult |
	queryResult := databaseConnection query: aQuery.
	^ queryResult data