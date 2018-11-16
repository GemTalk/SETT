as yet unclassified
getLogger
	| working gitLog |
	working := FileSystem disk workingDirectory.
	gitLog := (working / 'sett-git.log') writeStream
		setToEnd;
		flush.
	^ gitLog