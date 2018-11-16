initialization
findAllTopLevelPundles
	allTopLevelPundles := Set new.
	self
		allPackageVersionsDo: [ :packageVersion | self addAllTopLevelPundlesFor: packageVersion ]