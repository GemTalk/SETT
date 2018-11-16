instance creation
writePackage: aPackageVersion to: rowanDirectories withDestinationConfiguration: aDestinationConfiguration withLogger: aSettLogger
	| tonelWriter |
	tonelWriter := self new.
	tonelWriter
		rowanDirectories: rowanDirectories;
		destinationConfiguration: aDestinationConfiguration;
		package: aPackageVersion;
		logger: aSettLogger;
		writePackageToDisk.
	^ tonelWriter