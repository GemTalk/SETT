copying
postCopy
	"We do not want to share our extensions dictionary with our copy."

	classExtensions := Dictionary new.
	problematicSharedVariables := OrderedCollection new.