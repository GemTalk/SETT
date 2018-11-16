accessing
superclassFullName
	^ properties at: 'superclass' ifAbsent: [ self error: 'Required property missing: superclass' ]