accessing
definitionString
	| stream |
	stream := WriteStream on: String new.
	self
		do: [ :component | 
			stream
				<< component;
				<< '.' ].
	stream position > 1
		ifTrue: [ stream skip: -1 ].
	^ stream contents