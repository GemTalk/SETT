accessing
category
	^ properties at: 'category' ifAbsent: [ properties at: 'inDictionary' ifAbsent: [ #() ] ]