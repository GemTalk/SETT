private-writing
classNameFor: aMethodDefinition parent: aClassDefinition
	aClassDefinition ifNil: [ ^ aMethodDefinition fullClassName ].
	^ aMethodDefinition classIsMeta 
		ifFalse: [ aClassDefinition key ]
		ifTrue: [ aClassDefinition key , ' class' ]