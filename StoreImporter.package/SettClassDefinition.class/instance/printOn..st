printing
printOn: aStream
	aStream
		<< self class name;
		<< ' ';
		<< className definitionString