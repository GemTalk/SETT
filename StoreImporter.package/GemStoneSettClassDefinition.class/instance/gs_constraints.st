accessing
gs_constraints
	^ properties
		at: 'gs_constraints'
		ifAbsent: [ #() ]