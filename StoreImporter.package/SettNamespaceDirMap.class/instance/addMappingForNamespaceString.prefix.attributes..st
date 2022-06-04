accessing
addMappingForNamespaceString: aNamespaceString prefix: aPrefixString attributes: rwAttributeArray

	self
		addToNamespaceMap: (SettNamespace fromString: aNamespaceString)
		prefix: aPrefixString
		attributes: rwAttributeArray