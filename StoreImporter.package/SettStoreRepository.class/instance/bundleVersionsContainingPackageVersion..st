initialization
bundleVersionsContainingPackageVersion: package
	^ containingBundleVersions at: package ifAbsentPut: [ Set new ]