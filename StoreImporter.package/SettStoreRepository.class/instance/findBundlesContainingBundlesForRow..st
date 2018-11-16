initialization
findBundlesContainingBundlesForRow: row
	| containingBundle containedBundle containingPK containedPK |
	containingPK := row at: 1.
	containedPK := row at: 2.
	containingBundle := allBundleVersions at: containingPK ifAbsent: [ nil ].
	containedBundle := allBundleVersions at: containedPK ifAbsent: [ nil ].
	containingBundle notNil & containedBundle notNil
		ifTrue: [ self pundleVersion: containedBundle isContainedByBundleVersion: containingBundle ]
		ifFalse: [ containedBundle isNil & containingBundle notNil
				ifTrue: [ ^ logger
						log:
							'Warning!: Could not find bundle contained in '
								, (allBundleVersions at: containingPK) asString ].
			containingBundle isNil & containedBundle notNil
				ifTrue: [ ^ logger
						log:
							'Warning!: Could not find bundle containing '
								, (allBundleVersions at: containedPK) asString ].
			^ logger log: 'Warning!: Could not find contained or containing bundle' ]