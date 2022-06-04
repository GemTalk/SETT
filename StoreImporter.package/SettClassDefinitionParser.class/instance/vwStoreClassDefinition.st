grammar
vwStoreClassDefinition

	^ super vwStoreClassDefinition
		map: [ :cname :attributes :eoi |
				VwSettClassDefinition name: cname properties: attributes ]