private-writing
writeInstanceSideMethodsOf: aClassDef toStream: aStream
	(aClassDef instanceMethodDefinitions sorted: [ :a :b | a selector < b selector ])
		do: [ :each | self writeMethodDefinition: each parent: aClassDef on: aStream ]