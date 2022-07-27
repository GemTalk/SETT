initializing
initializeFrom: row dbFacade: aDatabaseFacade
	"See DatabaseFacade >> namespaceDefinitionsInPackageWithId: for row ordering."

	"SELECT
	namespace.name,
	namespace.environmentstring,
	source.blobtype,
	source.blobdata
"

	name := row at: 1.
	environment := row at: 2.
	definition := (SettStoreBlob
		               ofType: (row at: 3)
		               bytes: (row at: 4)
		               dbFacade: aDatabaseFacade) decoded.
