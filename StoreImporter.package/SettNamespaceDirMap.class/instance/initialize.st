initialization
initialize
	"By default, we always map the Root namespace to no prefix."

	self
		addMappingForNamespaceString: 'Root'
		prefix: ''
		attributes: #(  )