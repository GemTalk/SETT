instance creation
forMap: nsMap
	| settNsMap |
	settNsMap := self new.
	nsMap
		do: [ :entry | 
			settNsMap
				addMappingForNamespace: (SettNamespace fromString: entry key)
				prefix: entry value first
				attributes: entry value second ].
	^ settNsMap