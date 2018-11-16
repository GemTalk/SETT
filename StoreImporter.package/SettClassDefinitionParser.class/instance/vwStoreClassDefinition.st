grammar
vwStoreClassDefinition
	^ super vwStoreClassDefinition
		map: [ :cname :attributes :eoi | 
			VwSettClassDefinition new
				name: cname;
				addProperties: attributes;
				yourself ]