accessing
instVarNames

	^ self propertyAt: 'instanceVariableNames' ifAbsent: [ #(  ) ]