copying
postCopy

	"don't forget to copy any compound state objects"

	super postCopy.
	packageNameToPlatformPropertiesMap := packageNameToPlatformPropertiesMap copy.
	packageNameToPlatformPropertiesMap
		keysAndValuesDo: [ :key :value | packageNameToPlatformPropertiesMap at: key put: value copy ]