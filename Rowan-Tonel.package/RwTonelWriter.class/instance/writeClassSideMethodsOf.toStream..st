private-writing
writeClassSideMethodsOf: aClassDef toStream: aStream
	(aClassDef classMethodDefinitions sorted: [ :a :b | a selector < b selector ])
		do: [ :each | self writeMethodDefinition: each parent: aClassDef on: aStream ]