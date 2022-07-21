instance creation
writePackage: aPackageVersion to: rowanDirectories withDestinationConfiguration: aDestinationConfiguration withLogger: aSettLogger

	| tonelWriter |
	tonelWriter := self new
		               rowanDirectories: rowanDirectories;
		               destinationConfiguration: aDestinationConfiguration;
		               packageVersion: aPackageVersion;
		               logger: aSettLogger;
		               yourself.
	tonelWriter writePackageToDisk.
	^ tonelWriter