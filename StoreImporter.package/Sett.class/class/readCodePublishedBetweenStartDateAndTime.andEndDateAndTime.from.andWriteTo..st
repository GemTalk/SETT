public
readCodePublishedBetweenStartDateAndTime: aDateAndTime andEndDateAndTime: endDateAndTime from: aSourceConfiguration andWriteTo: aDestinationConfiguration


	| worker |
	worker := self new
		withInitialDateAndTime: aDateAndTime;
		withEndDateAndTime: endDateAndTime;
		initializeForSourceConfiguration: aSourceConfiguration;
		initializeForDestinationConfiguration: aDestinationConfiguration;
		yourself.
	[worker
		findAllStorePublishes;
		writePublishesToGit]
			ensure: [ worker closeLog ].
	^worker