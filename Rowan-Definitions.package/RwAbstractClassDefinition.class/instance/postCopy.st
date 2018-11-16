copying
postCopy

	super postCopy.
	classMethodDefinitions :=  classMethodDefinitions copy.
	instanceMethodDefinitions := instanceMethodDefinitions copy
