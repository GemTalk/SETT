accessing
storeCommit: aStoreCommit
	"Copy the given commit so that the 'fluffed-up' commit can be GCed when I'm done committing it."
	storeCommit := aStoreCommit copy