logging
logTotalsTo: aLogger
	aLogger
		log: 'Found in Store repository:';
		log: allBundleVersions size printString , ' bundle versions,';
		log: allPackageVersions size printString , ' package versions';
		log: allTopLevelPundles size printString , ' publishes'