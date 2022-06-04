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
							                 package pundleName } ]
				ifFalse: [ 
					packagePrefix := self fetchPrefixForNamespace: eachNamespace.
					rwPackageName := packagePrefix , package pundleName ].
			rwPackages add: rwPackageName.
			rwPackageDef := RwPackageDefinition newNamed: rwPackageName.
			self updateCategoryFor: classDefs to: rwPackageName.
			self updateVwNamespace: eachNamespace for: classDefs.
			self
				addClasses: classDefs to: rwPackageDef;
				addClassExtensions: extensionDefs to: rwPackageDef.
			packageDefs add: rwPackageDef ] ]