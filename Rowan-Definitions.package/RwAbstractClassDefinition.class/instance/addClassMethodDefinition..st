accessing
addClassMethodDefinition: aMethodDefinition
	aMethodDefinition classIsMeta: true.
	self addDefinition: aMethodDefinition to: classMethodDefinitions