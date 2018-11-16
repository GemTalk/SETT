examples
example2
	| settUserMap |
	settUserMap := SettUserMap new.
	settUserMap
		addMappingFor: (SettStoreUser withUsername: 'storeuser1')
		to: (SettGitUser author: 'gitauthor1' email: 'git.author1@example.com').
	settUserMap
		addMappingFor: (SettStoreUser withUsername: 'storeuser2')
		to: (SettGitUser author: 'gitauthor2' email: 'git.author2@example.com')