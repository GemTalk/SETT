private-conversion
sanitizeClassName: altClassName using: aString
	"If we have a fully qualified class name, because
	 of multiple classes with the same name but different
	 namespaces, they might be incompatible with loading
	 into an image with dotted qualified names, such as
	 Root.Smalltalk.Seaside.Color.
	 Transform the name, if necessary, and answer the appropriate string.
	 By default, do nothing. We don't expect an extract from
	 VisualWorks to be loadable."

	aString = '.' ifTrue: [ ^altClassName ].
	^ altClassName copyReplaceAll: '.' with: aString