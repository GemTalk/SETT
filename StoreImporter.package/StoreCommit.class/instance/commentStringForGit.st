accessing
commentStringForGit
	| stream |
	self fetchCommitComment.
	stream := String new writeStream.
	stream
		nextPutAll: pundleVersion pundleName;
		nextPutAll: ' version ';
		nextPutAll: pundleVersion version;
		lf;
		nextPutAll: 'Blessing information from Store:';
		lf;
		lf.
	comment
		do: [ :entry | 
			stream
				nextPutAll: 'BlessingLevel: ';
				nextPutAll: entry blessingLevel printString;
				lf;
				nextPutAll: 'Timestamp: ';
				nextPutAll: entry timestamp printString;
				lf;
				nextPutAll: 'Comment: ';
				nextPutAll: (entry comment withLineEndings: String lf);
				lf;
				lf ].
	^ stream contents