accessing
classInstVars
	^ properties
		at: 'classInstVars'
		ifAbsent: [ #()]