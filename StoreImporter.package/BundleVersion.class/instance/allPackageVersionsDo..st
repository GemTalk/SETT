enumerating
allPackageVersionsDo: aBlock
	"Evaluate aBlock for all packageVersions I contain, directly or indirectly."

	containedPundleVersions do: [ :pundleVersion | pundleVersion allPackageVersionsDo: aBlock ]