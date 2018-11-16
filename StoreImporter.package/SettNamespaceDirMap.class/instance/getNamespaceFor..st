accessing
getNamespaceFor: namespace
	^ namespaceMap at: namespace ifPresent: [ ^ namespace ] ifAbsent: [ ^ nil ]