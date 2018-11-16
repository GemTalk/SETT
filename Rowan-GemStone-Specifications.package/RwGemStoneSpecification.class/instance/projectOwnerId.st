accessing
projectOwnerId

	^ projectOwnerId ifNil: [ Rowan image currentUserId ]