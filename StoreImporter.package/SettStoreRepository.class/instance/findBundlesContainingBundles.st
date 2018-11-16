initialization
findBundlesContainingBundles
	| rows |
	rows := dbFacade runQuery: 'select bundleref, subbundleref from tw_bundles'.
	rows do: [ :row | self findBundlesContainingBundlesForRow: row ]