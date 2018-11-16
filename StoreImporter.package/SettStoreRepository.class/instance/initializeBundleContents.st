initialization
initializeBundleContents
	allBundleVersions
		do: [ :bundleVersion | 
			bundleVersion
				containedPundles: (containedPundleVersions at: bundleVersion ifAbsent: [ Set new ]) ]