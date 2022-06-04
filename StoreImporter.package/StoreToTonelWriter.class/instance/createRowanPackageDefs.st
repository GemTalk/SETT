action
createRowanPackageDefs

	| rwPackageDef rwPackageName |
	self decorateDefinitionsWithDuplicatedSimpleNames.
	packageDefs := OrderedCollection new.
	rwPackages := Set new.
	rwPackageName := package pundleName.
	rwPackages add: rwPackageName.
	rwPackageDef := RwPackageDefinition newNamed: rwPackageName.
	self
		addClasses: package classDefinitions to: rwPackageDef;
		addClassExtensions: package classExtensions to: rwPackageDef.
	packageDefs add: rwPackageDef