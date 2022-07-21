accessing
originalCategory
	"Only used if SETT overwrites the category for this class"

	^ self propertyAt: 'originalCategory' ifAbsent: [ nil ]