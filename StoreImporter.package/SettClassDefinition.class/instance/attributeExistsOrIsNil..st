private-accessing
attributeExistsOrIsNil: anAttribute
	^ properties at: anAttribute ifAbsent: nil