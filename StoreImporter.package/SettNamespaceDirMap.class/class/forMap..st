instance creation
forMap: nsMap
	"e.g. self forMap: {
								'Root.GemStone'  -> {'gs_' . {'gemstone'} } .
								'Root.Smalltalk' -> {'vw_' .{'visualworks'} } .
							}
	 This is in addition to the default map entry 'Root' -> {''. #()},
	 which defaults things to no prefix and no extra attributes."

	| settNsMap |
	settNsMap := self new.
	nsMap do: [ :entry | 
		settNsMap
			addMappingForNamespaceString: entry key
			prefix: entry value first
			attributes: entry value second ].
	^ settNsMap