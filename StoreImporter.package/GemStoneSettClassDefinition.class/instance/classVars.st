accessing
classVars
	^ properties at: 'classVars' ifAbsent: [ #() ]