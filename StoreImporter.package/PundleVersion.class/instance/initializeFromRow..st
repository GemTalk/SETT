initializing
initializeFromRow: row
	"List and order of fields must agree with #columnNamesString."

	primaryKey := row at: 1.
	pundleName := row at: 2.
	version := row at: 3.
	timestamp := TimestampConverter dateAndTimeForSeconds: (row at: 4).
	username := row at: 5
