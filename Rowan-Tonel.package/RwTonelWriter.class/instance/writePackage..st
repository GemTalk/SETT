public
writePackage: aDefinition
	packageDir := sourceDir / (self replaceFileDelimiterIn: aDefinition key).
	self createDirectory: packageDir.
	self writePackageDefinition: aDefinition to: packageDir.
	aDefinition classDefinitions
		do: [ :classDef | self writeClassDefinition: classDef to: packageDir ].
	aDefinition classExtensions
		do: [ :extensionDef | self writeClassExtension: extensionDef to: packageDir ]