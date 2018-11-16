initialization
pundleVersionsContainedByBundleVersion: bundle
	^ containedPundleVersions at: bundle ifAbsentPut: [ Set new ]