action
createRowanPackageDefs
	"This class only works with one package,
	 but other variants might produce multiple tonel packages from on VisualWorks package."

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