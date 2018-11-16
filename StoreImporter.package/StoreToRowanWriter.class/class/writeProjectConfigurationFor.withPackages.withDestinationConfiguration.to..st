instance creation
writeProjectConfigurationFor: pundleName withPackages: allPackageNames withDestinationConfiguration: destinationConfiguration to: rowanDirectories
	| tonelWriter |
	tonelWriter := self new.
	tonelWriter
		rowanDirectories: rowanDirectories;
		pundleName: pundleName;
		packageNames: allPackageNames;
		destinationConfiguration: destinationConfiguration;
		writeRowanMetadata