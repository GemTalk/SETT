accessing
instVarNames

	^ self propertyAt: 'instVarNames' ifAbsent: [ #(  ) ]