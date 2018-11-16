action
createSettPackageMapForNamespace: aSettNameSpace
	| settPackageMap |
	settPackageMap := SettPackageMap new
		prefix: nil;
		yourself.
	self addSettPackageMap: settPackageMap forNamespace: aSettNameSpace.
	^ packageMap at: aSettNameSpace.