*rowan-gemstone-definitions
_compareProperty: propertyKey propertyVaue: propertyValue againstBaseValue: baseValue

	propertyKey = 'comment' ifFalse: [ ^super _compareProperty: propertyKey propertyVaue: propertyValue againstBaseValue: baseValue ].
	propertyValue = baseValue
		ifTrue: [ ^ true ]
		ifFalse: [ 
			"empty or nil comments need to compare equal in GemStone"
			^(propertyValue == nil or: [ propertyValue isEmpty]) and: [ baseValue == nil or: [ baseValue isEmpty] ] ]
