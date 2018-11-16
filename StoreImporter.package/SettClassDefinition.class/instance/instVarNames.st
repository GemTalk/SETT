accessing
instVarNames
	^ properties at: 'instanceVariableNames' ifAbsent: [ #() ]