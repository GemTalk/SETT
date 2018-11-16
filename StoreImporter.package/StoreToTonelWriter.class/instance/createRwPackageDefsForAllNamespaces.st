action
createRwPackageDefsForAllNamespaces
	packageDefs := OrderedCollection new.
	rwPackages := Set new.
	packageMap keys
		do: [ :namespace | 
			| rwPackageDef packagePrefix classDefs extensionDefs |
			classDefs := (packageMap at: namespace) classes.
			extensionDefs := (packageMap at: namespace) extensions.
			classDefs isEmpty & extensionDefs isEmpty
				ifFalse: [ | rwPackageName |
					"If includeNamespaceInPackageName is set"
					destinationConfiguration includeNamespaceInPackageName
						ifTrue: [ rwPackageName := '_'
								join:
									{('_' join: namespace).
									package pundleName} ]
						ifFalse: [ packagePrefix := self fetchPrefixForNamespace: namespace.
							rwPackageName := packagePrefix , package pundleName ].
					rwPackages add: rwPackageName.
					rwPackageDef := RwPackageDefinition newNamed: rwPackageName.
					self updateCategoryFor: classDefs to: rwPackageName.
					self updateVwNamespace: namespace for: classDefs.
					self
						addClasses: classDefs to: rwPackageDef;
						addClassExtensions: extensionDefs to: rwPackageDef.
					packageDefs add: rwPackageDef ] ]