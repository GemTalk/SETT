accessing
classVars
	^ properties at: 'classVariableNames' ifAbsent: [ #() ]