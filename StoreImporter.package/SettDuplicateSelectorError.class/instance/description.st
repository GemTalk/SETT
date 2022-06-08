accessing
description

	| stream |
	self methodDefinition ifNil: [ 
		^ 'Duplicate selector in unspecified method definition' ].
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'Duplicate selector encountered in ';
		nextPutAll: self methodDefinition signature.
	self packageVersion notNil ifTrue: [ 
		stream
			nextPutAll: ' from ';
			print: self packageVersion ].
	^stream contents