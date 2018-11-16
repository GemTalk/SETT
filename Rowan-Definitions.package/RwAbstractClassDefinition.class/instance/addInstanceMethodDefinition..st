accessing
addInstanceMethodDefinition: aMethodDefinition
	aMethodDefinition classIsMeta: false.
	self addDefinition: aMethodDefinition to: instanceMethodDefinitions