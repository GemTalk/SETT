grammar
mundaneAttributeLine
	^ super mundaneAttributeLine map: [ :key :colon :value | key -> value ]