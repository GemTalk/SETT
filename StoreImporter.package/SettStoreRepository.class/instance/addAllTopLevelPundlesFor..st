initialization
addAllTopLevelPundlesFor: pundleVersion
	| containers |
	containers := self containersOf: pundleVersion.
	containers isEmpty
		ifTrue: [ allTopLevelPundles add: pundleVersion ]
		ifFalse: [ containers do: [ :container | self addAllTopLevelPundlesFor: container ] ]