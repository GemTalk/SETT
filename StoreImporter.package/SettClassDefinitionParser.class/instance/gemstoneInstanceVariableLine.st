grammar
gemstoneInstanceVariableLine
	^ super gemstoneInstanceVariableLine map: [ :ws :key :colon :value | 
		key -> value third ]