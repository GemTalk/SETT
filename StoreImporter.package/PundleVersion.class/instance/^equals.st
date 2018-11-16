comparing
= aPundleVersion
	self class = aPundleVersion class
		ifFalse: [ ^ false ].
	^ primaryKey = aPundleVersion primaryKey