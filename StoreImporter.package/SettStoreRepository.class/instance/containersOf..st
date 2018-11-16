queries
containersOf: pundleVersion
	^ containingBundleVersions at: pundleVersion ifAbsent: [ Set new ]