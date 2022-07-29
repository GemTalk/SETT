action
addClasses: classDefs to: rwnPackageDef
	classDefs
		do: [ :classDefinition | 
			| rowanClassDef |
			rowanClassDef := self rowanClassDefinitionFor: classDefinition.
			self addRowanMethodDefsFor: classDefinition toRowanClassDef: rowanClassDef.
			rwnPackageDef addClassDefinition: rowanClassDef ]