enumerating
allPackageVersionsDo: aBlock
	"Evaluate aBlock for all packageVersions I contain, directly or indirectly.
	Since I am a PackageVersion, that is just me."

	aBlock value: self