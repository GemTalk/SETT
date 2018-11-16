action
writeRowanPropertiesFile
	| outstream |
	outstream := (rowanDirectories rowanSourcesDirectory / 'properties.st') writeStream.
	outstream
		nextPutAll: '{ #format : ''tonel''}';
		flush;
		close