accessing
superclassFullName

	^ self
		  propertyAt: 'superclass'
		  ifAbsent: [ self error: 'Required property missing: superclass' ]