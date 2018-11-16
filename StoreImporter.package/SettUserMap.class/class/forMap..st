examples
forMap: aUserMap
	| settUserMap |
	settUserMap := self new.
	aUserMap
		do: [ :entry | 
			settUserMap
				addMappingFor: (SettStoreUser withUsername: entry key)
				to: (SettGitUser author: entry value first email: entry value second) ].
	^ settUserMap