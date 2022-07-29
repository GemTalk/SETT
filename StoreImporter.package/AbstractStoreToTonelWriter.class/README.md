Store to Tonel Writer transforms the source code from VisualWorks/Store formats to tonel.
There are currently two permutations, but there could be more.

Instance Variables:
	destinationConfiguration	<SettDestinationConfiguration>	specifies details of where things are written
	logger							<SettLogger>							writes messages to the log file
	packageDefs					<Collection of: RwPackageDefinition>	the rowan packages to write out
	packageVersion				<PackageVersion>					The Store package version to convert
	rowanDirectories			<RowanDirectoryStructure>		the directory structure model
	rwPackages					<Collection of: String>			the names of the packages to write