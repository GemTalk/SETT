accessing
gs_constraints

	^ self propertyAt: 'gs_constraints' ifAbsent: [ #(  ) ]