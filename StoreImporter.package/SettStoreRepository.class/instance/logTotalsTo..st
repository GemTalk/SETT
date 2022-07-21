logging
logTotalsTo: aLogger

	| uniqueTopLevelPundleNames |
	uniqueTopLevelPundleNames := self uniqueTopLevelPundleNames.

	aLogger
		log: 'Found in Store repository:';
		log: '	' , allBundleVersions size printString , ' bundle versions';
		log: '	' , allPackageVersions size printString , ' package versions';
		log: '	' , allTopLevelPundles size printString , ' publishes';
		log: '	' , uniqueTopLevelPundleNames size printString , ' unique top-level pundle names'.

	uniqueTopLevelPundleNames doWithIndex: [ :eachName :index |
		aLogger log: '		' , index printString,  '	' , eachName ].