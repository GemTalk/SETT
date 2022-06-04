grammar
gemstoneStoreClassDefinition

	^ super gemstoneStoreClassDefinition
		map: [ :cname :attributes :eoi |
				GemStoneSettClassDefinition name: cname properties: attributes ]