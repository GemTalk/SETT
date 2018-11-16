grammar
gemstoneStoreClassDefinition
	^ super gemstoneStoreClassDefinition
		map: [ :cname :attributes :eoi | 
			GemStoneSettClassDefinition new
				name: cname;
				addProperties: attributes;
				buildSuperclassLine; 
				yourself ]