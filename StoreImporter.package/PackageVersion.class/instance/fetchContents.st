fetching
fetchContents
	self
		fetchNamespaceDefinitions;
		fetchClassDefinitions;
		fetchSharedVariables;
		fetchMethodDefinitions