initialization
findBundlesContainingPackages
	| rows |
	rows := dbFacade runQuery: 'select bundleref, packageref from tw_packages'.
	rows do: [ :row | self findBundlesContainingPackagesForRow: row ]