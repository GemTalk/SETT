public
readCodePublishedBetweenStartDateAndTime: aDateAndTime andEndDateAndTime: endDateAndTime from: aSourceConfiguration andWriteTo: aDestinationConfiguration


	| worker |
	worker := self new.
	worker
		withInitialDateAndTime: aDateAndTime;
		withEndDateAndTime: endDateAndTime ;
		initializeForSourceConfiguration: aSourceConfiguration;
		initializeForDestinationConfiguration: aDestinationConfiguration;
		findAllStorePublishes;
		writePublishesToGit