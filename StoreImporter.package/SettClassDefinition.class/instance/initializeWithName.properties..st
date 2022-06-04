initialization
initializeWithName: aFullyQualifiedClassName properties: someAssociations

	self name: aFullyQualifiedClassName.
	self addProperties: someAssociations.
	self initializeNamespace.
