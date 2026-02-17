private-conversion
addRowanMethodDefsFor: classExtension toRowanClassExtension: rowanClassExtension inPackageNamed: packageName

	classExtension classMethods do: [ :storeMethod | 
		| rowanMethodDef |
		rowanMethodDef := RwMethodDefinition
			                  newForSelector: storeMethod selector
			                  protocol: storeMethod protocol
			                  source: storeMethod sourceCode.
		rowanClassExtension addClassMethodDefinition: rowanMethodDef ].
	classExtension instanceMethods do: [ :storeMethod | 
		| rowanMethodDef |
		rowanMethodDef := RwMethodDefinition
			                  newForSelector: storeMethod selector
			                  protocol: storeMethod protocol
			                  source: storeMethod sourceCode.
		rowanClassExtension addInstanceMethodDefinition: rowanMethodDef ]
