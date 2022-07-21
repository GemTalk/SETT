initialization
fetchAllOfClass: aClass

	| result rows |
	result := Dictionary new.
	rows := dbFacade allRowsForClass: aClass.
	rows do: [ :row | 
		| pundle |
		pundle := aClass
			          fromDbQuery: row
			          withLogger: logger
			          dbFacade: dbFacade.
		result at: pundle primaryKey put: pundle ].
	^ result