accessing
classVars

	^ self propertyAt: 'classVars' ifAbsent: [ #(  ) ]