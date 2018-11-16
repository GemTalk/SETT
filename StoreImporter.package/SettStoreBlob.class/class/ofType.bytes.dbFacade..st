instance creation
ofType: typeInteger bytes: aByteArray dbFacade: dbFacade
	| concreteSubclass |
	concreteSubclass := dbFacade blobClass.
	^ concreteSubclass new
		blobType: typeInteger;
		blobBytes: aByteArray;
		dbFacade: dbFacade;
		yourself