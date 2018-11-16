accessing
initialize
	namespaceMap
		ifNil: [ namespaceMap := Dictionary new.
			namespaceMap
				at: (SettNamespace fromString: 'Root')
				put: '' -> Array new ]