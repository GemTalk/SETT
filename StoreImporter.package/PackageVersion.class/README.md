PackageVersion is the version of a package, the leaf container in Store. Only packages hold code definitions. A package alone may not have sufficient information for processing all Store artefacts. For example, shared variables may depend on information from other packages to be properly resolved.

Any definitions which cannot be resolved from the package information alone need to be set aside to be finalized after all packages have been read from Store. So far, that only affects shared variables. See the detailed notes in #addSharedVariable: and the resolution in #retryProblematicSharedVariables.


Instance Variables:
	allClassNames						<Collection of: String>	union of all class names from a top-level pundle version
	allNamespaceNames					<Collection of: String>	union of all namespace names from a top-level pundle version
	dbFacade								<StoreDatabaseFacade>		accesses the database specifics
	classDefinitions					<Collection of: SettClassDefinition>	class definitons along w/methods
	classExtensions						<Collection of: SettClassDefinition>	class definitions w/usually just methods
	namespaceDefinitions				<Collection of: SettNamespaceDefinition>	used for shared variables
	problematicSharedVariables		<Collection of: SettSharedVariableDefinition>	ones which need information from other packages to be resolved
