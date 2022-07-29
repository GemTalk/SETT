private-conversion
addRowanMethodDefsFor: storeClass toRowanClassDef: rowanClassDef
	storeClass classMethods
		do: [ :storeMethod | 
			| rowanMethodDef |
			rowanMethodDef := RwMethodDefinition
				newForSelector: storeMethod selector
				protocol: storeMethod protocol
				source: storeMethod sourceCode.
			rowanClassDef addClassMethodDefinition: rowanMethodDef ].
	storeClass instanceMethods
		do: [ :storeMethod | 
			| rowanMethodDef |
			rowanMethodDef := RwMethodDefinition
				newForSelector: storeMethod selector
				protocol: storeMethod protocol
				source: storeMethod sourceCode.
			rowanClassDef addInstanceMethodDefinition: rowanMethodDef ]