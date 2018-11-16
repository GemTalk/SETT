action
createRowanProjectDef
	| rowanProjectConfiguration |
	rowanProjectConfiguration := RwProjectCompoundConfiguration
		newNamed: pundleName
		for: pundleName.
		
	rowanProjectConfiguration packageNames: packageNames.
	rowanProjectConfiguration comment: 'Project automatically created via SETT import'.
	^ rowanProjectConfiguration