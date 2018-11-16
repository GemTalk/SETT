accessing
pools
	^ properties at: 'poolDictionaries' ifAbsent: [ #() ]