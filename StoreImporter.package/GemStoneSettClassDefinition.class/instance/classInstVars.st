accessing
classInstVars

	^ self propertyAt: 'classInstVars' ifAbsent: [ #(  ) ]