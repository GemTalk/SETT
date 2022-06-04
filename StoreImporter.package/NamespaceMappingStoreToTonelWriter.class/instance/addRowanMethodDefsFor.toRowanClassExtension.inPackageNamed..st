private-conversion
addRowanMethodDefsFor: methodDefinition toRowanClassExtension: rowanClassExtension inPackageNamed: packageName
	methodDefinition classMethods
		do: [ :storeMethod | 
			| rowanMethodDef |
			rowanMethodDef := RwMethodDefinition
				newForSelector: storeMethod selector
				protocol: '*' , packageName 
				source: storeMethod sourceCode.
			rowanMethodDef propertyAt: 'originalCategory' put: storeMethod protocol.
			rowanClassExtension addClassMethodDefinition: rowanMethodDef ].
	methodDefinition instanceMethods
		do: [ :storeMethod | 
			| rowanMethodDef |
			rowanMethodDef := RwMethodDefinition
				newForSelector: storeMethod selector
				protocol: '*' , packageName 
				source: storeMethod sourceCode.
			rowanMethodDef propertyAt: 'originalCategory' put: storeMethod protocol.
			rowanClassExtension addInstanceMethodDefinition: rowanMethodDef ]