accessing
pools

	^ self propertyAt: 'poolDictionaries' ifAbsent: [ #(  ) ]