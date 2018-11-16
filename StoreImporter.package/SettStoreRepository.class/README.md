Models the top-level aspects of a Store repository -- bundle and package versions.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	allBundleVersions:		<Dictionary> bundleVersion primary key -> bundleVersion
	allPackageVersions:		<Dictionary > packageVersion primary key -> packageVersion
	containedPundleVersions:		<Dictionary> bundleVersion -> Set of contained PundleVersions
	containingBundleVersions:	<Dictionary> pundleVersion -> Set of containing BundleVersions
	dbFacade:		<StoreDatabaseFacade> Connections and queries for the database.


    Implementation Points