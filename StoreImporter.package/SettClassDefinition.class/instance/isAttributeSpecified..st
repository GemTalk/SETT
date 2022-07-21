private-accessing
isAttributeSpecified: anAttribute

	^ (self propertyAt: anAttribute ifAbsent: nil) notNil