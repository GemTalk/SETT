accessing
category

	^ self
		  propertyAt: 'category'
		  ifAbsent: [ self
							propertyAt: 'inDictionary'
							ifAbsent: [ #(  ) ] ]