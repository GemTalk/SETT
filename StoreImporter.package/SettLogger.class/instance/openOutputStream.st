initializing
openOutputStream

	| working filename timestamp |
	working := FileSystem disk workingDirectory.
	timestamp := self fetchCurrentTimestamp
		             replaceAll: $  with: $_;
		             replaceAll: $: with: $-;
		             yourself.
	filename := 'sett_' , timestamp , '.log'.
	logOutputSream := (working / filename) writeStream setToEnd