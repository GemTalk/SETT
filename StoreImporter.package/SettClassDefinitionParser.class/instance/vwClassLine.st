grammar
vwClassLine
	^ super vwClassLine
		map: [ :ns :ws :defineClass :cname | 
			(SettFullyQualifiedClassName withAll: ns)
				addLast: cname;
				yourself ]