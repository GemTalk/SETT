accessing
classVars
	^ self propertyAt: 'classVariableNames' ifAbsent: [ #() ]