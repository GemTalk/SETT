printing
printOn: aStream

	aStream 
		print: self class;
		nextPutAll: '(';
		nextPutAll: self baseRepositoryPathString;
		nextPutAll: ')'