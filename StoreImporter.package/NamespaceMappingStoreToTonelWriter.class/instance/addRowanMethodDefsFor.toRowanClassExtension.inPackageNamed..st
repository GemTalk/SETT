private-conversion
addRowanMethodDefsFor: methodDefinition toRowanClassExtension: rowanClassExtension inPackageNamed: packageName

	| extensionProtocol |
	extensionProtocol := '*' , packageName.
	methodDefinition classMethods
		do: [ :storeMethod | 
			| rowanMethodDef |
			rowanMethodDef := RwMethodDefinition
				newForSelector: storeMethod selector
				protocol: extensionProtocol
				source: storeMethod sourceCode.
			rowanMethodDef propertyAt: 'originalCategory' put: storeMethod protocol.
			rowanClassExtension addClassMethodDefinition: rowanMethodDef ].
	methodDefinition instanceMethods
		do: [ :storeMethod | 
			| rowanMethodDef |
			rowanMethodDef := RwMethodDefinition
				newForSelector: storeMethod selector
				protocol: extensionProtocol
				source: storeMethod sourceCode.
			rowanMethodDef propertyAt: 'originalCategory' put: storeMethod protocol.
			rowanClassExtension addInstanceMethodDefinition: rowanMethodDef ]