initialization
initializeContainment
	"Initialize containingBundleVersions. It is a dictionary whose keys are PundleVersions. 
	Each value is the collection of BundleVersions that contain that key."

	containingBundleVersions := Dictionary new.
	containedPundleVersions := Dictionary new.
	self
		findBundlesContainingPackages;
		findBundlesContainingBundles;
		findAllTopLevelPundles
