queries
topLevelPundlesSince: aDateAndTime
	^ allTopLevelPundles select: [ :pundle | pundle timestamp > aDateAndTime ]