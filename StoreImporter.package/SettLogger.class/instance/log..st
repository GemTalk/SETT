logging
log: aString
	logOutputSream
		nextPutAll: self fetchCurrentTimestamp;
		nextPutAll: ' ';
		nextPutAll: aString;
		nextPutAll: String lf;
		flush