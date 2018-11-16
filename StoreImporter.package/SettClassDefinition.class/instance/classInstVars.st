accessing
classInstVars
	^ properties at: 'classInstanceVariableNames' ifAbsent: [ #() ]