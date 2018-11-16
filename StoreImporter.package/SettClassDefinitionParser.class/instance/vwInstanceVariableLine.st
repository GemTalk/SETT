grammar
vwInstanceVariableLine
	^ super vwInstanceVariableLine map: [ :ws :key :colon :value | key -> value ]