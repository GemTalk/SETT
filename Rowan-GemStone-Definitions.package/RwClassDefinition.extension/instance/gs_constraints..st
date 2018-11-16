*rowan-gemstone-definitions
gs_constraints: constraintsArray

	(constraintsArray isEmpty not)
		ifTrue: [ 
			self properties
				at: 'gs_constraints'
				put: constraintsArray ]