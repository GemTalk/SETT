accessing
initializeFrom: row dbFacade: aDatabaseFacade
	| commentId commentString |
	self
		timestamp: (TimestampConverter dateAndTimeForSeconds: (row at: 3));
		blessingLevel: (row at: 4).
	commentId := row at: 5.
	commentString := commentId = 0
		ifTrue: [ 'No blessing comment entered in Store.' ]
		ifFalse: [ (SettStoreBlob ofType: (row at: 1) bytes: (row at: 2) dbFacade: aDatabaseFacade) decoded ].
	self comment: commentString