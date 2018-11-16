accessing
originalCategory
	"Only used if SETT overwrites the category for this class"

	^ properties at: 'originalCategory' ifAbsent: [ nil ]