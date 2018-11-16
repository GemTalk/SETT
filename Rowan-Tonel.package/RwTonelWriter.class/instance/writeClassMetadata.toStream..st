private-writing
writeClassMetadata: aClassDef toStream: aStream
	| nl |
	nl := self newLine.
	(aClassDef propertyAt: 'comment')
		ifNotNil: [ aStream << '"' << nl << (self commentOf: aClassDef) << nl << '"' << nl ].
	aStream << (self typeOf: aClassDef) << ' '
		<< (self typeClassDefinitionOf: aClassDef) << nl