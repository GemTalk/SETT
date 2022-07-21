initializing
fetchCurrentTimestamp

	| currentDateAndTime timestampStream |
	timestampStream := String new writeStream.
	currentDateAndTime := DateAndTime now.
	timestampStream
		nextPutAll: (currentDateAndTime year printPaddedWith: $0 to: 4);
		nextPutAll: '-';
		nextPutAll: (currentDateAndTime month printPaddedWith: $0 to: 2);
		nextPutAll: '-';
		nextPutAll: (currentDateAndTime dayOfMonth printPaddedWith: $0 to: 2);
		nextPutAll: ' ';
		nextPutAll: (currentDateAndTime hour24 printPaddedWith: $0 to: 2);
		nextPutAll: ':';
		nextPutAll: (currentDateAndTime minute printPaddedWith: $0 to: 2);
		nextPutAll: ':';
		nextPutAll: (currentDateAndTime seconds printPaddedWith: $0 to: 2);
		nextPutAll: '.';
		nextPutAll: (currentDateAndTime nanoSecond // 1000 printPaddedWith: $0 to: 6).
	^ timestampStream contents