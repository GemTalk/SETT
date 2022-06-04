private-conversion
addRowanMethodDefsFor: classExtension toRowanClassExtension: rowanClassExtension inPackageNamed: packageName
	classExtension classMethods
		do: [ :storeMethod | 
			| rowanMethodDef |
			rowanMethodDef := RwMethodDefinition
				newForSelector: storeMethod selector
				protocol: '*' , packageName 
				source: storeMethod sourceCode.
			rowanMethodDef propertyAt: 'originalCategory' put: storeMethod protocol.
			rowanClassExtension addClassMethodDefinition: rowanMethodDef ].
	classExtension instanceMethods
		do: [ :storeMethod | 
			| rowanMethodDef |
			rowanMethodDef := RwMethodDefinition
				newForSelector: storeMethod selector
				protocol: '*' , packageName 
				source: storeMethod sourceCode.
			rowanMethodDef propertyAt: 'originalCategory' put: storeMethod protocol.
			rowanClassExtension addInstanceMethodDefinition: rowanMethodDef ]