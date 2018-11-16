action
initializePackageMap
	packageMap := Dictionary new.
	namespaceMap := destinationConfiguration namespaceMapping.
	namespaceMap fetchMappings
		do: [ :settNameSpace | 
			packageMap
				at: settNameSpace
				put:
					{OrderedCollection new. "holds classes"
					OrderedCollection new. "holds class extensions"
					(namespaceMap getPrefixFor: settNameSpace)} ]