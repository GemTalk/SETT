grammar
fullyQualifiedClassName
	^ super fullyQualifiedClassName
		map: [ :components | SettFullyQualifiedClassName withAll: components ]