initialization
pundleVersion: pundle isContainedByBundleVersion: bundle
	| containingBundles containedPundles |
	containingBundles := self bundleVersionsContainingPackageVersion: pundle.
	containingBundles add: bundle.
	containedPundles := self pundleVersionsContainedByBundleVersion: bundle.
	containedPundles add: pundle