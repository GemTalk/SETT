comparing
= aPundleVersion
	self class = aPundleVersion class
		ifFalse: [ ^ false ].
	^ self primaryKey = aPundleVersion primaryKey