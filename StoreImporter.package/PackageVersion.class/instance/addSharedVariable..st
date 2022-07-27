updating
addSharedVariable: aSharedVariableDefinition
	"VisualWorks holds shared variables in namespaces.
	 Class variables are held in the class' namespace (which in *not* the namespace the class is defined in).
	
	 When adding a shared variable, we need to determine which namespace to put it in.
	 If it names a class in the package, we model it as a class variable of the named class.
	 Because shared variables are first class objects, VW allows an extension package to
	 define shared variables for a class defined in a different package. More generally,
	 VW allows a shared variable to be defined in any namespace. (e.g. Root.Smalltalk.GBSM)
	 Any other namespace can be mapped to a new SharedPool subclass. Note that this is 
	 not yet implemented correctly, as the consumer classes would have to include it in
	 their sharedPools yet the VisualWorks source code does not always include the
	 corresponding declaration in the imports string. The visibility rules and requirements
	 are different between VW and other Smalltalk implementations, such as Pharo."

	| definition |
	definition := classDefinitions
		              at: aSharedVariableDefinition classFullName
		              ifAbsent: [ "If it matches a namespace defined in this package, we can add a SharedPool subclass for it."
			              ((namespaceDefinitions includesKey: aSharedVariableDefinition classFullName definitionString)
				               and: [self trySharedPoolClassForSharedVariable: aSharedVariableDefinition ])
								ifTrue: [ ^self ]
								ifFalse: [ "If it doesn't reference a class or a namespace defined in this package, set it aside for later."
					              problematicSharedVariables add: aSharedVariableDefinition.
					              ^ logger log: 'Warning!: Shared Variable '
						                , aSharedVariableDefinition signature ,
						                ' ignored as possible pool variable. Class not found.' ] ].
	definition addClassVariable: aSharedVariableDefinition