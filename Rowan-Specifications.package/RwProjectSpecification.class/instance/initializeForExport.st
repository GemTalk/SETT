initialization
initializeForExport

	"before spec is exported, clear out any of the fields that are not to be included"

	super initializeForExport.
	imageSpec := nil.
	platformSpec valuesDo: [:each | each initializeForExport ].
	repoSpec initializeForExport
