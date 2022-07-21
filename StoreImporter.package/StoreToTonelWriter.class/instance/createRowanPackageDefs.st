action
createRowanPackageDefs

	| rwPackageDef rwPackageName |
	self decorateDefinitionsWithDuplicatedSimpleNames.
	packageDefs := OrderedCollection new.
	rwPackages := Set new.
	rwPackageName := packageVersion pundleName.
	rwPackages add: rwPackageName.
	rwPackageDef := RwPackageDefinition newNamed: rwPackageName.
	self
		addClasses: packageVersion classDefinitions to: rwPackageDef;
		addClassExtensions: packageVersion classExtensions to: rwPackageDef.
	packageDefs add: rwPackageDef