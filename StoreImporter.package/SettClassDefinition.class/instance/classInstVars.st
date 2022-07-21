accessing
classInstVars
	^ self propertyAt: 'classInstanceVariableNames' ifAbsent: [ #() ]