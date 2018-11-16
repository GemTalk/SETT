grammar
gemstoneClassline
	^ super gemstoneClassline
		map: [ :superclass :ws :defineClass :cname | 
			(SettFullyQualifiedClassName withAll: superclass)
				addLast: cname;
				yourself ]