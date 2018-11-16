copying
postCopy

	super postCopy.
	classDefinitions := classDefinitions copy.
	classExtensions := classExtensions copy
