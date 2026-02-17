action
createRwPackageDefsForAllNamespaces

	packageDefs := OrderedCollection new.
	rwPackages := Set new.
	packageMap keysAndValuesDo: [ :eachNamespace :eachSettPackageMap | 
		| rwPackageDef packagePrefix classDefs extensionDefs |
		classDefs := eachSettPackageMap classes.
		extensionDefs := eachSettPackageMap extensions.
		classDefs isEmpty & extensionDefs isEmpty ifFalse: [ 
			| rwPackageName |
			"If includeNamespaceInPackageName is set"
			destinationConfiguration includeNamespaceInPackageName
				ifTrue: [ 
					rwPackageName := '_' join: { 
							                 ('_' join: eachNamespace).
							                 packageVersion pundleName } ]
				ifFalse: [ 
					packagePrefix := self fetchPrefixForNamespace: eachNamespace.
					rwPackageName := packagePrefix , packageVersion pundleName ].
			rwPackages add: rwPackageName.
			rwPackageDef := RwPackageDefinition newNamed: rwPackageName.
"Rowan 1 needed class category to be the same as the package name. No longer needed.
			self updateCategoryFor: classDefs to: rwPackageName."
			self updateVwNamespace: eachNamespace for: classDefs.
			self
				addClasses: classDefs to: rwPackageDef;
				addClassExtensions: extensionDefs to: rwPackageDef.
			packageDefs add: rwPackageDef ] ]
