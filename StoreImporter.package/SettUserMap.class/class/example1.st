examples
example1
	| settUserMap users |
	users := {
		('storeuser1' -> {'gitauthor1'. 'git.author1@example.com'}).
		('storeuser2' -> {'gitauthor2'. 'git.author2@example.com'})
	}.
	settUserMap := SettUserMap forMap: users