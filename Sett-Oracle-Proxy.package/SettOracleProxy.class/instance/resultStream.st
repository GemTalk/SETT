accessing
resultStream

	^ resultStream
		ifNil: [ self resetResultStream ]