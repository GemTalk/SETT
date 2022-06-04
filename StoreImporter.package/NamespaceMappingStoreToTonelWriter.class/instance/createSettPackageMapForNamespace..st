action
createSettPackageMapForNamespace: aSettNameSpace

	| settPackageMap |
	settPackageMap := SettPackageMap new.
	self addSettPackageMap: settPackageMap forNamespace: aSettNameSpace.
	^ settPackageMap