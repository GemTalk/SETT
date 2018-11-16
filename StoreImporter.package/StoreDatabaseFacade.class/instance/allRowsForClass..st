reading
allRowsForClass: aClass
	"Fetch all rows for the given class, and answer the array of rows, where each row is an arrays of field values."

	^ self runQuery: 'SELECT ' , aClass columnNamesString , ' FROM ' , aClass tableName