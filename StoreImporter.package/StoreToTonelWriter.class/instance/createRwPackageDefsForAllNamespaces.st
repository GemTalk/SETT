action
createRwPackageDefsForAllNamespaces
	packageDefs := OrderedCollection new.
	rwPackages := Set new.
	packageMap keys
		do: [ :namespace | 
			| rwPackageDef packagePrefix classDefs extensionDefs |
			classDefs := (packageMap at: namespace) first.
			extensionDefs := (packageMap at: namespace) second.
			classDefs isEmpty & extensionDefs isEmpty
				ifFalse: [ | rwPackageName |
					packagePrefix := self fetchPrefixForNamespace: namespace.
					rwPackageName := packagePrefix , package pundleName.
					rwPackages add: rwPackageName.
					rwPackageDef := RwPackageDefinition newNamed: rwPackageName.
					self updateCategoryFor: classDefs to: rwPackageName.
					self
						addClasses: classDefs to: rwPackageDef;
						addClassExtensions: extensionDefs to: rwPackageDef.
					packageDefs add: rwPackageDef ] ]