*rowan-gemstone-definitions
updateGsPlatformSpecLoadedProjectInfo: projectInfo

	| spec gemstoneSpec thePackageMapSpecs |
	spec := self specification.
	thePackageMapSpecs := projectInfo at:  'packageMapSpecs' .
	gemstoneSpec := spec platformSpec at: 'gemstone'.
	(thePackageMapSpecs at: #defaultSymbolDictName otherwise: nil) 
		ifNotNil: [:name | gemstoneSpec defaultSymbolDictName: name ].
	(thePackageMapSpecs at: #defaultUseSessionMethodsForExtensions otherwise: nil) 
		ifNotNil: [:boolean | 
			gemstoneSpec defaultUseSessionMethodsForExtensions: boolean  ].
	(thePackageMapSpecs at: #packageNameToPlatformPropertiesMap otherwise: nil) 
		ifNotNil: [:map | gemstoneSpec packageNameToPlatformPropertiesMap: map]
