instance creation
forMap: nsMap
	"Add definitions for mapping VisualWorks namespaces to package
	 prefixes and additional attributes.
	 Each namespace encompasses nested namespaces. Root.Smalltalk encompasses 
	 classes in Root.Smalltalk, Root.Smalltalk.*, Root.Smalltalk.*.*, etc.

	 The argument nsMap is an array of associations, one per namespace.
	 Each association's key is the namespace and its value is another array
	 which specifies how that namespace is mapped. 
	 The first element of that array is the prefix for package names and 
	 the second element is a collection of extra attributes.
	 e.g. self forMap: {
								'Root.GemStone'  -> {'gs_' . {'gemstone'} } .
								'Root.Smalltalk' -> {'vw_' .{'visualworks'} } .
							}
	 These are in addition to the default map entry 'Root' -> {''. #()},
	 which defaults things to no prefix and no extra attributes.

	 NOTE: the extra attributes are not currently used. They are effectively only documentation."

	| settNsMap |
	settNsMap := self new.
	nsMap do: [ :entry | 
		settNsMap
			addMappingForNamespaceString: entry key
			prefix: entry value first
			attributes: entry value second ].
	^ settNsMap