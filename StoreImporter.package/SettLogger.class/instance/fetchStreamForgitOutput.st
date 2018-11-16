logging
fetchStreamForgitOutput
	logOutputSream
		nextPutAll: self fetchCurrentTimestamp;
		nextPutAll: ' ';
		nextPutAll: 'Git output:';
		nextPutAll: String lf;
		flush.
	^ logOutputSream  setToEnd