initialization
buildSuperclassLine
	| fullyQualifiedClassNameCopy |
	fullyQualifiedClassNameCopy := className copy.
	fullyQualifiedClassNameCopy removeLast.
	properties at: 'superclass' put: fullyQualifiedClassNameCopy