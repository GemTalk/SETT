accessing
getStreamFor: aPackageDir named: aName 
	^ (aPackageDir / aName ) writeStream
	