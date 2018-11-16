initialization
findBundlesContainingPackagesForRow: row
	| package bundle bundlePK packagePK |
	bundlePK := row at: 1.
	packagePK := row at: 2.
	bundle := allBundleVersions at: bundlePK ifAbsent: [ nil ].
	package := allPackageVersions at: packagePK ifAbsent: [ nil ].
	package notNil & bundle notNil
		ifTrue: [ self pundleVersion: package isContainedByBundleVersion: bundle ]
		ifFalse: [ package isNil & bundle notNil
				ifTrue: [ ^ logger log: 'Warning!: Could not find package referenced by ' , bundle asString ].
			package notNil & bundle isNil
				ifTrue: [ ^ logger log: 'Warning!: Could not find bundle referenced by ' , package asString ].
			^ logger log: 'Warning!: Could not find package referenced by unknown bundle.' ]