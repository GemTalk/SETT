accessing
initialize

	namespaceMap ifNil: [ 
		namespaceMap := Dictionary new.
		self
			addMappingForNamespaceString: 'Root'
			prefix: ''
			attributes: #(  ) ]