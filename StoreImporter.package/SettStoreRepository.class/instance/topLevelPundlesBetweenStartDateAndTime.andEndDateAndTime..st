queries
topLevelPundlesBetweenStartDateAndTime: aStartDateAndTime andEndDateAndTime: anEndDateAndTime
	^ allTopLevelPundles
		select:
			[ :pundle | pundle timestamp > aStartDateAndTime & (pundle timestamp < anEndDateAndTime) ]