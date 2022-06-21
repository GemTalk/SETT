accessing
getNamespaceFor: namespace

	^ self namespaceMap
		  at: namespace
		  ifPresent: [ namespace ]
		  ifAbsent: [ nil ]