action
addClassExtensions: classExtensionDef to: rwnPackageDef
	classExtensionDef
		do: [ :classDefinition | 
			| rowanClassExtension |
			rowanClassExtension := self rowanClassExtensionFor: classDefinition.
			self
				addRowanMethodDefsFor: classDefinition
				toRowanClassExtension: rowanClassExtension
				inPackageNamed: rwnPackageDef key.
			rwnPackageDef addClassExtension: rowanClassExtension ]