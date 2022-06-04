initialization
initializeNamespace
	"GemStone does not have namespaces, but we need to remember where it lives in VW.
	 We also need to 'set' the super class."

	super initializeNamespace.
	self buildSuperclassLine.