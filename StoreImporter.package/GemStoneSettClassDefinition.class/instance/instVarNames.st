accessing
instVarNames
	^ properties at: 'instVarNames' ifAbsent: [ #() ]