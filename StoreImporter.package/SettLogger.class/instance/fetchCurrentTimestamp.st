logging
fetchCurrentTimestamp
	"There has to be a strftime equivalent..."

	| currentDateAndTime timestampStream |
	timestampStream := String new writeStream.
	currentDateAndTime := DateAndTime now.
	timestampStream
		nextPutAll: currentDateAndTime year asString , '-';
		nextPutAll: (currentDateAndTime month printPaddedWith: $0 to: 2) , '-';
		nextPutAll: (currentDateAndTime dayOfMonth printPaddedWith: $0 to: 2) , 'T';
		nextPutAll: (currentDateAndTime hour24 printPaddedWith: $0 to: 2) , ':';
		nextPutAll: (currentDateAndTime minute printPaddedWith: $0 to: 2) , ':';
		nextPutAll: (currentDateAndTime seconds printPaddedWith: $0 to: 2) , '.';
		nextPutAll: (currentDateAndTime nanoSecond // 1000 printPaddedWith: $0 to: 6).
	^ timestampStream contents