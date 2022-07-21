accessing
gs_options

	^ self propertyAt: 'gs_options' ifAbsent: [ #(  ) ]