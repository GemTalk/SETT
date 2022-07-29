SettNamespaceMappingDestinationConfiguration is a Destination Configuration which applies namespace transformation rules. It allows one to simply prefix each package with a namespace or apply a mapping transformation to determine specific prefixes to apply. The latter can result in multiple tonel packages being written out for one Store package. Refer to the example method in SettNamespaceDirMap as well as the comment in the class method #forMap:. 


Instance Variables:
	includeNamespaceInPackageName	<Boolean>	whether to qualify package name (otherwise apply the transformation rules)
	namespaceMapping					<SettNamespaceDirMap>	defines rules mapping namespaces to package prefixes
