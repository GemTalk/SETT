accessing
gs_options
	^ properties
		at: 'gs_options'
		ifAbsent: [ #() ]